File.open(ARGV[0]).each_line do |line|
	line.chomp!
	line.gsub!(" ","")
	nums = line.split("").reverse!.map! { |num| num.to_i }

	if nums.length > 19 || nums.length < 12
		puts 0
	else
		sum = 0
		nums.each_with_index do |num, i|
			if i % 2 == 1
				add_num = num * 2
				if add_num >= 10
					sum += add_num/10 + add_num % 10
				else
					sum += add_num
				end
			else
				sum += num
			end
		end

		if sum % 10 == 0
			puts 1
		else
			puts 0
		end
	end
end