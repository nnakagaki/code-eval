File.open(ARGV[0]).each_line do |line|
  line.chomp!
  conversion = {0 => "0",
    1 => "1",
    2 => "abc",
    3 => "def",
    4 => "ghi",
    5 => "jkl",
    6 => "mno",
    7 => "pqrs",
    8 => "tuv",
    9 => "wxyz"}

  ans = ""
  conversion[line[0].to_i].each_char do |c0|
    conversion[line[1].to_i].each_char do |c1|
      conversion[line[2].to_i].each_char do |c2|
        conversion[line[3].to_i].each_char do |c3|
          conversion[line[4].to_i].each_char do |c4|
            conversion[line[5].to_i].each_char do |c5|
              conversion[line[6].to_i].each_char do |c6|
                ans += c0+c1+c2+c3+c4+c5+c6+","
              end
            end
          end
        end
      end
    end
  end

  puts ans[0..-2]
end
