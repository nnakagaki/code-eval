File.open(ARGV[0]).each_line do |line|
  line.chomp!
  list1, list2 = line.split(" | ")
  list1 = list1.split(" ")
  list2 = list2.split(" ")
  ans = ""
  list1.each_with_index do |el, i|
    ans += (el.to_i * list2[i].to_i).to_s + " "
  end

  puts ans.strip
end