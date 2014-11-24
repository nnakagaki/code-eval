File.open(ARGV[0]).each_line do |line|
	line.chomp!
	words = line.split(" ")
	longest_word = ""

	words.each do |word|
		if word.length > longest_word.length
			longest_word = word
		end
	end

	puts longest_word
end