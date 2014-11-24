File.open(ARGV[0]).each_line do |line|
	line.chomp!
	regex = /(^[\w][\w..]*@[a-z]+..[a-z]+)$/
	if line.match(regex)
		puts "true"
	else
		puts "false"
	end
end