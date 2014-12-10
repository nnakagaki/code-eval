File.open(ARGV[0]).each_line do |line|
  line.chomp!
  split = line.split(";")
  words = split[0].split(" ")
  ans = Array.new(words.length)
  split[1].split(" ").each_with_index do |ind, i|
  	ans[ind.to_i - 1] = words[i]
  end

  ans.length.times do |i|
  	ans[i] = words[-1] if ans[i].nil?
  end

  puts ans.join(" ")
end
