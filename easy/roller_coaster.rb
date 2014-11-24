File.open(ARGV[0]).each_line do |line|
  line.chomp!
  line.downcase!

  casing = "up"

  line.length.times do |i|
    ord = line[i].ord - "a".ord
    if ord >= 0 && ord < 26
      if casing == "up"
        line[i] = line[i].upcase
        casing = "down"
      else
        line[i] = line[i].downcase
        casing = "up"
      end
    end
  end

  puts line
end
