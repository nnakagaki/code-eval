File.open(ARGV[0]).each_line do |line|
  line.chomp!
  split = line.split(" ")
  ans = 0
  sub_ans = ""
  is_neg = false
  num_words = {"one"=> 1, "two"=> 2, "three"=> 3, "four"=> 4, "five"=> 5, "six"=> 6, "seven"=> 7, "eight"=> 8, "nine"=> 9, "ten"=> 10, "eleven"=> 11, "twelve"=> 12, "thirteen"=> 13, "fourteen"=> 14, "fifteen"=> 15, "sixteen"=> 16, "seventeen"=> 17, "eighteen"=> 18, "nineteen"=> 19, "twenty"=> 20, "thirty"=> 30, "forty"=> 40, "fifty"=> 50, "sixty"=> 60, "seventy"=> 70, "eighty"=> 80, "ninety"=> 90}

  split.each do |word|
    if word == "zero"
      ans = 0
    elsif word == "negative"
      is_neg = true
    elsif word == "hundred"
      sub_ans += "00"
    elsif word == "thousand"
      sub_ans += "000"
      ans += sub_ans.to_i
      sub_ans = ""
    elsif word == "million"
      sub_ans += "000000"
      ans += sub_ans.to_i
      sub_ans = ""
    else
      curr = num_words[word].to_i
      if curr > 9
        if sub_ans.length > 2 && sub_ans[-1] == "0" && sub_ans[-2] == "0"
          sub_ans = sub_ans[0..-3] + curr.to_s
        else
          sub_ans += curr.to_s
        end
      else
        if sub_ans.length > 1 && sub_ans[-1] == "0"
          sub_ans = sub_ans[0..-2] + curr.to_s
        else
          sub_ans += curr.to_s
        end
      end
    end
  end

  ans += sub_ans.to_i

  if is_neg
    ans = ans * -1
  end

  puts ans
end
