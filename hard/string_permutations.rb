File.open(ARGV[0]).each_line do |line|
	line.chomp!
	arr = []
	line.length.times do |i|
		arr << line[i]
	end

	perms = arr.permutation.to_a
	perms.each_with_index do |perm, i|
		perms[i] = perm.join("")
	end

	puts perms.sort.join(",")
end