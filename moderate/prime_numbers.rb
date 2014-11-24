primes = [2,3]

File.open(ARGV[0]).each_line do |line|
	line.chomp!
	line = line.to_i

	if line < 3
		puts ""
	elsif primes[-1] >= line
		temp_primes = []
		primes.each do |prime|
			if prime < line
				temp_primes << prime
			else
				break
			end
		end

		puts temp_primes.join(",")
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
		puts primes.join(",")
	end
end