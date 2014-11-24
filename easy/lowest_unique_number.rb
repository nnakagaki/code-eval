File.open(ARGV[0]).each_line do |line|
  line.chomp!
  nums = line.split(" ")
  arr = Array.new(9, 0)

  nums.each do |num|
  	arr[num.to_i - 1] += 1
  end

  lowest_unique = 999
  arr.each_with_index do |el, i|
  	if (el == 1) && ((i + 1) < lowest_unique)
  		lowest_unique = i + 1
  	end
  end

  if lowest_unique == 999
  	puts 0
  else
  	nums.each_with_index do |num, i|
  		if num.to_i == lowest_unique
  			puts i + 1
  		end
  	end
  end

 end
