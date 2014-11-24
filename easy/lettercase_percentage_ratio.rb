File.open(ARGV[0]).each_line do |line|
  line.chomp!

  converted = line.downcase

  upcase = 0.0
  downcase = 0.0

  line.length.times do |i|
    if line[i] == converted[i]
      downcase += 1
    else
      upcase += 1
    end
  end

  down_temp = (downcase/(upcase + downcase)*10000).round
  up_temp = (upcase/(upcase + downcase)*10000).round

  if down_temp == 0
    down_str = "lowercase: 0.00"
  else
    down_str = "lowercase: " + down_temp.to_s.insert(-3,".")
  end

  if up_temp == 0
    up_str = "uppercase: 0.00"
  else
    up_str = "uppercase: " + up_temp.to_s.insert(-3,".")
  end


  puts down_str + " " + up_str
end