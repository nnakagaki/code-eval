File.open(ARGV[0]).each_line do |line|
  line.chomp!
  split = line.split(" ")
  num = split[0]
  op_loc = 0
  op = ""
  split[1].length.times do |i|
    if split[1][i] == "-" || split[1][i] == "+"
      op_loc = i
      op = split[1][i]
    end
  end

  first = num[0...op_loc]
  last = num[op_loc..-1]

  if op == "-"
    puts first.to_i - last.to_i
  else
    puts first.to_i + last.to_i
  end
end
