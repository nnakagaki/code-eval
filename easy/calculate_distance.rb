File.open(ARGV[0]).each_line do |line|
  line.chomp!
  line.gsub!("(", "")
  line.gsub!(")", "")
  line.gsub!(", ", ",")
  coords = line.split(" ")
  start = coords[0].split(",")
  ending = coords[1].split(",")

  puts (((start[0].to_i - ending[0].to_i) ** 2 + (start[1].to_i - ending[1].to_i) ** 2) ** 0.5).to_i
end
