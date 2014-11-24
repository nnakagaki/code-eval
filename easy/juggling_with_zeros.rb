File.open(ARGV[0]).each_line do |line|
	line.chomp!
	zeros = line.split(" ")
	binary = ""
	zeros.each_with_index do |zero, i|
		if i % 2 == 0
			if zero == "00"
				binary += "1" * zeros[i+1].length
			elsif zero == "0"
				binary += "0" * zeros[i+1].length
			end
		end
	end

	puts binary.to_i(2)
end