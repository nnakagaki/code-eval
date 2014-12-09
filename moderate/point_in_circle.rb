File.open(ARGV[0]).each_line do |line|
	line.chomp!
	split = line.split(";")
	center = split[0][9..-2].split(", ")
	radius = split[1][9..-1]
	point = split[2][9..-2].split(", ")
	dist = ((center[0].to_f - point[0].to_f) ** 2 + (center[1].to_f - point[1].to_f) ** 2) ** 0.5
	if dist <= radius.to_f
		puts true
	else
		puts false
	end
end