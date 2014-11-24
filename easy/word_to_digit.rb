File.open(ARGV[0]).each_line do |line|
	line.chomp!
	words = line.split(";")
	num_str = ""
	words.each do |word|
		if word == "zero"
			num_str += "0"
		elsif word == "one"
			num_str += "1"
		elsif word == "two"
			num_str += "2"
		elsif word == "three"
			num_str += "3"
		elsif word == "four"
			num_str += "4"
		elsif word == "five"
			num_str += "5"
		elsif word == "six"
			num_str += "6"
		elsif word == "seven"
			num_str += "7"
		elsif word == "eight"
			num_str += "8"
		elsif word == "nine"
			num_str += "9"
		end
	end

	puts num_str
end