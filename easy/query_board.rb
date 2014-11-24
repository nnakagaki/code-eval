board = Array.new(256)
board.length.times do |i|
	board[i] = Array.new(256,0)
end

File.open(ARGV[0]).each_line do |line|
  line.chomp!
  split = line.split(" ")
  if split[0] == "SetCol"
  	board.each do |row|
  		row[split[1].to_i] = split[2].to_i
  	end
  elsif split[0] == "SetRow"
  	board[split[1].to_i].length.times do |i|
  		board[split[1].to_i][i] = split[2].to_i
  	end
  elsif split[0] == "QueryCol"
  	sum = 0
  	board.each do |row|
  		sum += row[split[1].to_i]
  	end

  	puts sum
  elsif split[0] == "QueryRow"
  	sum = 0
  	board[split[1].to_i].each do |el|
  		sum += el
  	end

  	puts sum
  end
end