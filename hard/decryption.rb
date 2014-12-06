message = "012222 1114142503 0313012513 03141418192102 0113 2419182119021713 06131715070119"
keyed_alphabet = "BHISOECRTMGWYVALUZDNFJKPQX"

curr = ""
decrypted = ""
message.each_char do |char|
  if char != " "
    curr += char
  else
    decrypted += " "
  end

  if curr.length == 2
    decrypted += keyed_alphabet[curr.to_i - 1]
    curr = ""
  end
end

puts decrypted
