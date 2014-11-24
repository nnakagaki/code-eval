File.open(ARGV[0]).each_line do |line|
	line.chomp!
	num = line.to_i
	if num != 0
		ans = 0
		iteration = Math.log2(num).floor + 1
		iteration.times do |i|
			curr = 2 ** (iteration - i - 1)
			if num - curr >= 0
				num -= curr
				ans += 1
			end
		end

		puts ans
	else
		puts 0
	end
end