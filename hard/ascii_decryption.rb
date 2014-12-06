File.open(ARGV[0]).each_line do |line|
  line.chomp!
  split = line.split(" | ")
  word_length = split[0]
  last_letter = split[1]
  message = split[2]

  message = message.split(" ").map { |letter| letter.to_i }

  diff = message.min - 32

  message.map! { |letter| (letter - diff).chr }

  answer = ""

  message.each do |letter|
    answer += letter
  end

  puts answer

end
