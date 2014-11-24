File.open(ARGV[0]).each_line do |line|
	line.chomp!
	arr, num = line.split(";")
	arr = arr.split(",")
	ans = ""
	arr[0..-2].each_with_index do |el1, i1|
		arr[i1+1..-1].each do |el2|
			if el1.to_i + el2.to_i == num.to_i
				ans += el1 + "," + el2 + ";"
			end
		end
	end

	if ans == ""
		puts "NULL"
	else
		puts ans[0..-2]
	end
end