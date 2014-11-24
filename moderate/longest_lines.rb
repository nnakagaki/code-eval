lines = []

File.open(ARGV[0]).each_line do |line|
	line.chomp!
	lines << line
end

n = lines[0].to_i
ans = []

n.times do |i|

	longest_length = 0
	longest = ""
	longest_ind = -1

	lines[1..-1].each_with_index do |line, ind|
		if line.length > longest_length
			longest_length = line.length
			longest = line
			longest_ind = ind + 1
		end
	end

	ans << longest
	lines.delete_at(longest_ind)
end

puts ans
