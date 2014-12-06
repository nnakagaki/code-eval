File.open(ARGV[0]).each_line do |line|
  line.chomp!
  split = line.split(",")
  count = 0

  arr = []
  split[0].each_char do |char|
    arr << char
  end

  combos = arr.combination(split[1].length)

  combos.each do |combo|
    str = ""
    combo.each do |el|
      str += el
    end

    if str == split[1]
      count += 1
    end
  end

  puts count
end
