12.times do |i|
  ans_str = ""
  12.times do |j|
    curr_num = (i+1) * (j+1)

    if curr_num < 10 && j == 0
      ans_str += " "
    elsif j == 0
      
    elsif curr_num < 10
      ans_str += "   "
    elsif curr_num < 100
      ans_str += "  "
    elsif curr_num < 1000
      ans_str += " "
    end

    ans_str += curr_num.to_s
    prev_num = curr_num
  end

  puts ans_str
end
