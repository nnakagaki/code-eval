squares = Hash.new(false)

46341.times do |i|
	squares[i ** 2] = true
end

File.open(ARGV[0]).each_line do |line|
	line.chomp!
	num = line.to_i
	temp_squares = squares.select { |k,v| k <= num }
	count = 0
	temp_squares.each do |k,v|
		if temp_squares[num - k]
			count += 1
			if num - k == k
				count += 1
			end
		end
	end

	puts count / 2
end