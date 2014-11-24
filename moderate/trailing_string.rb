File.open(ARGV[0]).each_line do |line|
	line.chomp!
	str, substr = line.split(",")
	if str[str.length - substr.length..-1] == substr
		puts 1
	else
		puts 0
	end
end