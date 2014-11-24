File.open(ARGV[0]).each_line do |line|
  line.chomp!
  split = line.split(" ")
  curr_num = split[0]
  count = 1
  ans = ""

  split[1..-1].each do |el|
    if el == curr_num
      count += 1
    else
      ans += count.to_s + " " + curr_num + " "
      curr_num = el
      count = 1
    end
  end

  puts ans + count.to_s + " " + curr_num

end