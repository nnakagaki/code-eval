File.open(ARGV[0]).each_line do |line|
  line.chomp!
  line = line.to_i

  if line < 0
    puts "This program is for humans"
  elsif line < 3
    puts "Still in Mama's arms"
  elsif line < 5
    puts "Preschool Maniac"
  elsif line < 12
    puts "Elementary school"
  elsif line < 15
    puts "Middle school"
  elsif line < 19
    puts "High school"
  elsif line < 23
    puts "College"
  elsif line < 66
    puts "Working for the man"
  elsif line < 101
    puts "The Golden Years"
  else 
    puts "This program is for humans"
  end
end
