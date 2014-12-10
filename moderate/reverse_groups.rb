File.open(ARGV[0]).each_line do |line|
	line.chomp!
	split = line.split(";")
	arr = split[0].split(",")
	k = split[1].to_i

	(arr.length / k).times do |i|
		arr[k*i...k*(i + 1)] = arr[k*i...k*(i + 1)].reverse
	end

	puts arr.join(",")
end