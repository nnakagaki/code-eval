File.open(ARGV[0]).each_line do |line|
	line.chomp!
	split = line.split(" ")
	puts split.reverse[split[-1].to_i]
end