File.open(ARGV[0]).each_line do |line|
	line.chomp!
	split = line.split(",")
	arr = []
	split[0].to_i.times do |i|
		arr << i
	end

	ans = []
	curr_pos = -1
	move = split[1].to_i
	loop do
		curr_pos += move
		curr_pos = curr_pos % arr.length
		ans << arr.delete_at(curr_pos)
		curr_pos -= 1
		break if arr.length == 0
	end

	puts ans.join(" ")
end