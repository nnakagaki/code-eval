File.open(ARGV[0]).each_line do |line|
	line.chomp!
	n, arr = line.split(";")
	check = Array.new(n.to_i - 1, 0)
	arr.split(",").each do |el|
		check[el.to_i] += 1
		if check[el.to_i] == 2
			puts el
			break
		end
	end
end