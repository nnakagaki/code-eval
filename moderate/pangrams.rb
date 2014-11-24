File.open(ARGV[0]).each_line do |line|
	line.downcase!
	line.chomp!
	alph = Array.new(26,false)
	line.length.times do |i|
		ord = line[i].ord - "a".ord
		if ord >= 0 && ord < 26
			alph[ord] = true
		end
	end

	ans = ""

	alph.each_with_index do |el, i|
		unless el
			ans += (i + "a".ord).chr
		end
	end

	if ans == ""
		puts "NULL"
	else
		puts ans
	end
end