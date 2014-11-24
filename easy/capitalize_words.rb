File.open(ARGV[0]).each_line do |line|
	line.chomp!
	words = line.split(" ")
	words.each do |word|
		word.capitalize!
	end

	puts words.join(" ")
end