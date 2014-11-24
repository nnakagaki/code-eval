File.open(ARGV[0]).each_line do |line|
	line.chomp!
	split = line.split(" ")
	wire = split[0].to_i
	dist = split[1].to_i
	first = split[3].to_i
	last = split[-1].to_i
	bats = split[3..-1]

	count = 0
	while (last + dist) <= (wire - 6)
		last += dist
		count += 1
	end

	while (first - dist) >= 6
		first -= dist
		count += 1
	end

	bats[0..-2].each_with_index do |bat, i|
		diff = bats[i+1].to_i - bat.to_i
		if diff >= 2 * dist
			count += (diff/dist).floor - 1
		end
	end

	puts count
end