prev_line = [0]

File.open(ARGV[0]).each_line do |line|
	line.chomp!
	split = line.split(" ")
	split.map! { |el| el.to_i }
	split.length.times do |i|
		if i == 0
			split[0] += prev_line[0]
		elsif i == split.length - 1
			split[i] += prev_line[-1]
		else
			if prev_line[i/2] > prev_line[i/2 + 1]
				split[i] += prev_line[i/2]
			else
				split[i] += prev_line[i/2 + 1]
			end
		end
	end
	
	p prev_line = split
end

puts prev_line.max