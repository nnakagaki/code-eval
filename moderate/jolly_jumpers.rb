File.open(ARGV[0]).each_line do |line|
	line.chomp!
	split = line.split(" ")
	arr = Array.new(split.length - 1, 0)

	ans = "Not jolly"
	split[0..-2].each_with_index do |el, i|
		diff = (el.to_i - split[i+1].to_i).abs
		if diff > arr.length
			ans = "Not jolly"
			break
		end
		arr[diff - 1] += 1
		if arr[diff - 1] > 1
			ans = "Not jolly"
			break
		end
	end

	if arr.inject(:+) == arr.length
		ans = "Jolly"
	end

	puts ans
end