File.open(ARGV[0]).each_line do |line|
	line.chomp!
	str, scrub = line.split(", ")
	scrub.length.times do |i|
		str.gsub!(scrub[i], "")
	end

	puts str
end