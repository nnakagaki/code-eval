File.open(ARGV[0]).each_line do |line|
	line.chomp!
	split = line.split(",")
	split.map! { |el| el.to_i }
	count = 0
	split.combination(4).each do |combo|
		sum = combo.inject(:+)
		count += 1 if sum == 0
	end

	puts count
end