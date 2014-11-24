def is_pallindrome?(str)
	str.length/2.times do |i|
		return false if str[i] != str[-1-i]
	end

	true
end

File.open(ARGV[0]).each_line do |line|
	line.chomp!
	iteration = 0
	while !is_pallindrome?(line)
		line = (line.to_i + line.reverse.to_i).to_s
		iteration += 1
	end

	puts iteration.to_s + " " + line
end