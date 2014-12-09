n = 0
num_str = "0"
new_num_str = "1"
while n <= 520000
	num_str += new_num_str
	next_num_str = ""
	new_num_str.length.times do |i|
		if new_num_str[i] == "0"
			next_num_str += "1"
		elsif new_num_str[i] == "1"
			next_num_str += "2"
		elsif new_num_str[i] == "2"
			next_num_str += "0"
		end
	end
	
	new_num_str += next_num_str
	n = num_str.length
end

File.open(ARGV[0]).each_line do |line|
	line.chomp!
	puts num_str[line.to_i]
end