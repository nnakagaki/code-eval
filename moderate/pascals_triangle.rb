def factorial(n)
	if n == 1 || n == 0
		return 1
	else
		n * factorial(n-1)
	end
end

File.open(ARGV[0]).each_line do |line|
	line.chomp!
	ans = ""
	line.to_i.times do |i|
		(i + 1).times do |ii|
			ans += "#{factorial(i)/(factorial(ii) * factorial(i-ii))}" + " "
		end
	end

	puts ans
end