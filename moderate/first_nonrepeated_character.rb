File.open(ARGV[0]).each_line do |line|
	line.chomp!
	alph = Array.new(26,0)

	line.length.times do |i|
		ord = line[i].ord - "a".ord
		alph[ord] += 1
	end

	line.length.times do |i|
		ord = line[i].ord - "a".ord
		if alph[ord] == 1
			puts line[i]
			break
		end
	end
end