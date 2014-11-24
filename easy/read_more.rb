File.open(ARGV[0]).each_line do |line|
  line.chomp!
  if line.length <= 55
    puts line
  else
    words = line.split(" ")
    ans = ""
    new_ans = ""
    i = 0
    while new_ans.length <= 39
      new_ans += words[i]
      if new_ans.length <= 39
        ans = new_ans
      end

      new_ans += " "
      i += 1
    end

    puts ans.strip + "... <Read More>"
  end
end
