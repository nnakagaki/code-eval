File.open(ARGV[0]).each_line do |line|
	line = line.chomp
	power = line.length
	sum = 0
	line.length.times do |i|
		sum += line[i].to_i ** power
	end

	if sum == line.to_i
		puts "True"
	else
		puts "False"
	end
end