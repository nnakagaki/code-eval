File.open(ARGV[0]).each_line do |line|
  words = line.split(" ")
  ans = ""
  words.each do |word|
    ans = word + " " + ans
  end

  puts ans.strip!
end
