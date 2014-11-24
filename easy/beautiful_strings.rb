File.open(ARGV[0]).each_line do |line|
	line.downcase!
	alph = Array.new(26,0)

	line.length.times do |i|
		ord = line[i].ord - "a".ord
		if ord >= 0 && ord < 26
			alph[ord] += 1
		end
	end

	alph.sort!
	sum = 0

	alph.each_with_index do |el, i|
		sum += el * (i + 1)
	end

	puts sum
end