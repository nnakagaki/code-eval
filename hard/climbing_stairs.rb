def factorial(n)
  if n == 0 || n == 1
    return 1
  else
    n * factorial(n-1)
  end
end

File.open(ARGV[0]).each_line do |line|
  line.chomp!
  n = line.to_i
  k = 0
  ans = 1
  while n >= 0
    k += 1
    n -= 2
    if n >= 0
      ans += factorial(n+k)/(factorial(k)*factorial(n))
    end
  end

  puts ans
end
