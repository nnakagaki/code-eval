File.open(ARGV[0]).each_line do |line|
  line.chomp!
  split = line.split(",")
  best_sum = split[0].to_i
  best_subsum = split[0].to_i

  split[1..-1].each do |num|
    num = num.to_i
    new_sum = best_subsum + num
    if num > new_sum
      best_subsum = num
    else
      best_subsum = new_sum
    end

    if best_subsum > best_sum
      best_sum = best_subsum
    end
  end

  puts best_sum
end
