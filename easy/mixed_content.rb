File.open(ARGV[0]).each_line do |line|
  line.chomp!
  split = line.split(",")
  words = ""
  numbers = ""

  split.each do |el|
  	if el == "0"
  		numbers += "0,"
  	elsif el.to_i != 0
  		numbers += el + ","
  	else
  		words += el + ","
  	end
  end

  if words == ""
  	puts numbers[0..-2]
  elsif numbers == ""
  	puts words[0..-2]
  else
  	puts words[0..-2] + "|" + numbers[0..-2]
  end
end