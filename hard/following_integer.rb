File.open(ARGV[0]).each_line do |line|
  line.chomp!
  num = line.to_i
  count = Array.new(9, 0)

  num.to_s.each_char do |char|
    count[char.to_i - 1] += 1 unless char == "0"
  end

  min = ""
  count.each_with_index do |el, i|
    el.times { min += (i+1).to_s }
  end

  max = ""
  count.reverse.each_with_index do |el, i|
    el.times { max += (9-i).to_s }
  end

  if line.delete("0") == max
    count = line.count("0") + 1
    ans = min[0] + "0" * count + min[1..-1]
  else
    flag = true
    while flag
      num += 1
      count2 = Array.new(9, 0)

      num.to_s.each_char do |char|
        count2[char.to_i - 1] += 1 unless char == "0"
      end

      if count == count2
        flag = false
        ans = num.to_s
      end
    end
  end
  
  puts ans
end
