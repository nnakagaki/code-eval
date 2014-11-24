File.open(ARGV[0]).each_line do |line|
	line.chomp!
	str1, str2 = line.split(";")
	regex = /^http\:\/\/(\w+)\.com/
	match1 = str1.match(regex)
	match2 = str2.match(regex)
	if match1 && match2 && match1[1].downcase == match2[1].downcase
		puts "True"
	else
		puts "False"
	end
end