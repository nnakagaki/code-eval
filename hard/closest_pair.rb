point_num = 0
points = []

File.open(ARGV[0]).each_line do |line|
  line.chomp!
  if line == line.split(" ")[0]
    point_num = line.to_i
    points = []
  else
    points << line.split(" ").map {|el| el.to_i}
    dist = 10000

    if points.length == point_num
      points.each_with_index.each do |p1, i|
        points[i+1..-1].each do |p2|
          temp_dist = ((p1[0]-p2[0]) ** 2 + (p1[1]-p2[1]) ** 2) ** 0.5
          if temp_dist < dist
            dist = temp_dist
          end
        end
      end

      if dist > 9999.9999
        puts "INFINITY"
      else
        puts (dist * 10000).round/10000.0
      end
    end
  end
end
