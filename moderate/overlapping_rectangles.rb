File.open(ARGV[0]).each_line do |line|
  line.chomp!
  split = line.split(",")

  split.length.times do |i|
    split[i] = split[i].to_i
  end

  x_between = true
  y_between = true

  if split[0] < split[2]
    if split[4] > split[0] && split[4] < split[2]
      x_between = true
    else
      x_between = false
      if split[6] > split[0] && split[6] < split[2]
        x_between = true
      else
        x_between = false
      end
    end
  else
    if split[4] < split[0] && split[4] > split[2]
      x_between = true
    else
      x_between = false
      if split[6] < split[0] && split[6] > split[2]
        x_between = true
      else
        x_between = false
      end
    end
  end

  if split[1] < split[3]
    if split[5] > split[1] && split[5] < split[3]
      y_between = true
    else
      y_between = false
      if split[7] > split[1] && split[7] < split[3]
        y_between = true
      else
        y_between = false
      end
    end
  else
    if split[5] < split[1] && split[5] > split[3]
      y_between = true
    else
      y_between = false
      if split[7] < split[1] && split[7] > split[3]
        y_between = true
      else
        y_between = false
      end
    end
  end

  if x_between && y_between
    puts "True"
  else
    puts "False"
  end
end
