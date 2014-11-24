File.open(ARGV[0]).each_line do |line|
  line.chomp!
  ans = ""
  i = 0
  while 1==1
    ans += line[i]
    if line.length % (i + 1) == 0
      if line == ans * (line.length / (i + 1))
        puts ans.length
        break
      end
    end

    i += 1
  end
end
