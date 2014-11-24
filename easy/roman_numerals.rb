File.open(ARGV[0]).each_line do |line|
  line.chomp!
  num = line.to_i
  ans = ""
  curr_roman = "M"
  while num > 0
    if curr_roman == "M"
      if num - 1000 >= 0
        ans += curr_roman
        num -= 1000
      else
        curr_roman = "CM"
      end
    elsif curr_roman == "CM"
      if num - 900 >= 0
        ans += curr_roman
        num -= 900
      else
        curr_roman = "D"
      end
    elsif curr_roman == "D"
      if num - 500 >= 0
        ans += curr_roman
        num -= 500
      else
        curr_roman = "CD"
      end
    elsif curr_roman == "CD"
      if num - 400 >= 0
        ans += curr_roman
        num -= 400
      else
        curr_roman = "C"
      end
    elsif curr_roman == "C"
      if num - 100 >= 0
        ans += curr_roman
        num -= 100
      else
        curr_roman = "XC"
      end
    elsif curr_roman == "XC"
      if num - 90 >= 0
        ans += curr_roman
        num -= 90
      else
        curr_roman = "L"
      end
    elsif curr_roman == "L"
      if num - 50 >= 0
        ans += curr_roman
        num -= 50
      else
        curr_roman = "XL"
      end
    elsif curr_roman == "XL"
      if num - 40 >= 0
        ans += curr_roman
        num -= 40
      else
        curr_roman = "X"
      end
    elsif curr_roman == "X"
      if num - 10 >= 0
        ans += curr_roman
        num -= 10
      else
        curr_roman = "IX"
      end
    elsif curr_roman == "IX"
      if num - 9 >= 0
        ans += curr_roman
        num -= 9
      else
        curr_roman = "V"
      end
    elsif curr_roman == "V"
      if num - 5 >= 0
        ans += curr_roman
        num -= 5
      else
        curr_roman = "IV"
      end
    elsif curr_roman == "IV"
      if num - 4 >= 0
        ans += curr_roman
        num -= 4
      else
        curr_roman = "I"
      end
    elsif curr_roman == "I"
      if num - 1 >= 0
        ans += curr_roman
        num -= 1
      end
    end
  end

  puts ans
end