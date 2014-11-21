File.open(ARGV[0]).each_line do |line|
  sum = 0
  line.length.times do |i|
    sum += line[i].to_i
  end

  puts sum
end
