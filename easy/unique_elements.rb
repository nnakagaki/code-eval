File.open(ARGV[0]).each_line do |line|
  uniques = line.chomp.split(",").uniq
  puts uniques.join(",")
end
