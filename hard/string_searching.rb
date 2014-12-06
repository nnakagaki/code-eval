File.open(ARGV[0]).each_line do |line|
  line.chomp!
  split = line.split(",")
  split[1].gsub!("*", ".*")
  ans = "false"
  regex = /(#{ split[1] })/

  if split[0].match(regex)
    ans = "true"
  end

  puts ans
end
