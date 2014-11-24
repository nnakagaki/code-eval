File.open(ARGV[0]).each_line do |line|
	line.chomp!
	puts line.split(" ")[-2]
end