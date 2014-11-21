File.open(ARGV[0]).each_line do |line|
  nums = line.split(",")
  start = nums[1].to_i
  while start < nums[0].to_i
    start += start
  end

  puts start
end
