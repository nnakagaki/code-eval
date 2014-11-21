File.open(ARGV[0]).each_line do |line|
  if line.to_i == 0
    puts 0
  else

    before = 1
    before2 = 0
    count = 2

    while count <= line.to_i
      count += 1
      bbefore = before
      before = before + before2
      before2 = bbefore
    end

    puts before
  end
end
