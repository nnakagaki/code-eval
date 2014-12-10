File.open(ARGV[0]).each_line do |line|
	line.chomp!
	split = line.split(", ")
	points = []
	ans = "true"
	split.each do |el|
		points << el[1..-2].split(",").map! { |el| el.to_i}
	end

	dists = Hash.new(0)

	3.times do |i|
		dist = (points[0][0] - points[i+1][0]) ** 2 + (points[0][1] - points[i+1][1]) ** 2
		dists[dist] += 1
	end

	if dists.length != 2
		ans = false
	else
		single_d = -1
		double_d = -1
		dists.each do |k, v|
			if v == 1
				single_d = k
			else
				double_d = k
			end
		end

		if single_d == 2 * double_d
			ans = true
		else
			ans = false
		end
	end

	puts ans
end