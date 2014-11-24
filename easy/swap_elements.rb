File.open(ARGV[0]).each_line do |line|
  line.chomp!
  split = line.split(" : ")
  nums = split[0].split(" ")
  swaps = split[1].split(", ")
  swaps.each do |swap|
    from, to = swap.split("-")
    temp = nums[from.to_i]
    nums[from.to_i] = nums[to.to_i]
    nums[to.to_i] = temp
  end
  puts nums.join(" ")
 end
