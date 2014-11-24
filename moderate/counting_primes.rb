primes = [2,3]

File.open(ARGV[0]).each_line do |line|
	line.chomp!
	lower, line = line.split(",")
	lower = lower.to_i
	line = line.to_i

	if line < 2
		puts "0"
	elsif line == 2
		puts "1"
	elsif primes[-1] >= line
		prime_count = 0
		primes.each do |prime|
			if prime <= line && prime >= lower
				prime_count += 1
			elsif prime > line
				break
			end
		end

		puts prime_count
	else
		curr_num = primes[-1] + 2
		while curr_num < line
			is_prime = true
			primes[1..-1].each do |prime|
				if curr_num % prime == 0
					is_prime = false
				end
			end

			if is_prime
				primes << curr_num
			end

			curr_num += 2
		end

		prime_count = 0
		primes.each do |prime|
			if prime <= line && prime >= lower
				prime_count += 1
			elsif prime > line
				break
			end
		end

		puts prime_count
	end
end