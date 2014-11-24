File.open(ARGV[0]).each_line do |line|
  line.chomp!
  split = line.split(",")
  ans = "None"
  nums = Hash.new(0)
  split.each do |el|
    nums[el] += 1
  end

  nums.each do |key, val|
    if val > split.length / 2
      ans = key
      break
    end
  end

  puts ans
end