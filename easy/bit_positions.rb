File.open(ARGV[0]).each_line do |line|
  nums = line.split(",")

  curr = nums[0].to_i
  max = Math.log2(curr).floor

  bits = Array.new(max + 1, nil)

  bits.length.times do |i|
    if (2 ** (bits.length - 1 - i)) <= curr
      bits[i] = 1
      curr -= (2 ** (bits.length - 1 - i))
    else
      bits[i] = 0
    end
  end

  if bits.reverse[nums[1].to_i-1] == bits.reverse[nums[2].to_i-1]
    puts "true"
  else
    puts "false"
  end
end
