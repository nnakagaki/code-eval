File.open(ARGV[0]).each_line do |line|
	line.chomp!
	nums = line.split(" ")
	nums_dup = nums.dup
	ans = Array.new(nums.length)
	nums.each_with_index do |num, i|
		nums[i] = [num.to_f, i]
	end

	nums.sort!

	nums.each_with_index do |num, i|
		ans[i] = nums_dup[num[1]]
	end

	puts ans.join(" ")
end