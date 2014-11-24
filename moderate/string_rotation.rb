File.open(ARGV[0]).each_line do |line|
	line.chomp!
	orig, shift = line.split(",")
	ans = "False"
	orig.length.times do |i|
		if orig == shift[i..-1] + shift[0...i]
			ans = "True"
			break
		end
	end

	puts ans
end