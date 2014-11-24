File.open(ARGV[0]).each_line do |line|
  line.chomp!
  line.gsub!("\"", "'")
  line.gsub!("null, ", "")
  items = line.split("[")[1].split("]")[0].split("}, {")

  label_regex = /(\'label\'\:\s)/
  id_regex = /(\'id\'\:\s\d+)/

  sum = 0

  items.each do |item|
  	if item.match(label_regex)
  		sum += item.match(id_regex)[0][6..-1].to_i
  	end
  end

  puts sum
end