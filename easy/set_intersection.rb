File.open(ARGV[0]).each_line do |line|
  sets = line.split(";")
  set1 = sets[0].split(",")
  set2 = sets[1].split(",")

  ans = []

  set1.each do |el|
    set2.each do |el2|
      if el == el2
        ans << el
      end
    end
  end

  puts ans.uniq.join(",")
end
