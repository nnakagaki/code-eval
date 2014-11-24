File.open(ARGV[0]).each_line do |line|
  line.chomp!
  split = line.split(";")
  dist = []
  split.each do |el|
  	dist << el.split(",")[1].to_i
  end
  dist.sort!

  ans = ""
  prev = 0
  dist.each do |el|
  	ans += (el - prev).to_s + ","
  	prev = el
  end

  puts ans[0..-2]
end
