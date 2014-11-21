File.open(ARGV[0]).each_line do |line|

  nums = line.split(" ")

  ans_str = ""
  nums[2].to_i.times do |i|
    fb_str = ""
    if (i+1) % nums[0].to_i == 0
      fb_str += "F"
    end
    if (i+1) % nums[1].to_i == 0
      fb_str += "B"
    end

    if fb_str.length > 0
      fb_str += " "
      ans_str += fb_str
    else
      ans_str += "#{i + 1} "
    end
  end

  puts ans_str.strip!

end
