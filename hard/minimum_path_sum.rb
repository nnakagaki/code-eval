array_dim = 0
curr_matrix = []

File.open(ARGV[0]).each_line do |line|
  line.chomp!
  split = line.split(",")
  if split[0] == line
    array_dim = line.to_i
    curr_matrix = []
  else
    curr_matrix << split.map {|el| el.to_i}
    if curr_matrix.length == array_dim
      curr_matrix.each_with_index do |row, i|
        if i == 0
          row.each_with_index do |el, r|
            unless r == row.length - 1
              row[r + 1] += el
            end
          end
        else
          row.each_with_index do |el, r|
            if r == 0
              row[r] += curr_matrix[i - 1][r]
            end
            unless r == row.length - 1
              if row[r] + row[r + 1] > curr_matrix[i - 1][r + 1] + row[r + 1]
                row[r + 1] = curr_matrix[i - 1][r + 1] + row[r + 1]
              else
                row[r + 1] = row[r] + row[r + 1]
              end
            end
          end
        end
      end
      puts curr_matrix[-1][-1]
    end
  end
end
