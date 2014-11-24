File.open(ARGV[0]).each_line do |line|
	line.chomp!
	search_str, nums = line.split("| ")
	nums = nums.split(" ")
	ans = ""
	nums.each do |num|
		ans += search_str[(num.to_i - 1) % search_str.length]
	end

	puts ans
end