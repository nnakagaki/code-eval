File.open(ARGV[0]).each_line do |line|
	line.chomp!
	stack = []
	ans = "True"
	line.length.times do |i|
		if line[i] == "(" || line[i] == "{" || line[i] == "["
			stack << line[i]
		else
			if stack[-1] == "(" && line[i] == ")"
				stack.pop
			elsif stack[-1] == "{" && line[i] == "}"
				stack.pop
			elsif stack[-1] == "[" && line[i] == "]"
				stack.pop
			else
				ans = "False"
				break
			end
		end
	end

	if stack.length != 0
		ans = "False"
	end

	puts ans
end