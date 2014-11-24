File.open(ARGV[0]).each_line do |line|
	line.chomp!
	ans = ""
	line.length.times do |i|
		if line[i] == "0"
			ans += "0"
		elsif line[i].to_i != 0
			ans += line[i]
		elsif line[i] == "a"
			ans += "0"
		elsif line[i] == "b"
			ans += "1"
		elsif line[i] == "c"
			ans += "2"
		elsif line[i] == "d"
			ans += "3"
		elsif line[i] == "e"
			ans += "4"
		elsif line[i] == "f"
			ans += "5"
		elsif line[i] == "g"
			ans += "6"
		elsif line[i] == "h"
			ans += "7"
		elsif line[i] == "i"
			ans += "8"
		elsif line[i] == "j"
			ans += "9"
		end
	end

	if ans == ""
		ans = "NONE"
	end

	puts ans
end