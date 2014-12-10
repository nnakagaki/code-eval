key = {
	"a" => "y",
	"b" => "h",
	"c" => "e",
	"d" => "s",
	"e" => "o",
	"f" => "c",
	"g" => "v",
	"h" => "x",
	"i" => "d",
	"j" => "u",
	"k" => "i",
	"l" => "g",
	"m" => "l",
	"n" => "b",
	"o" => "k",
	"p" => "r",
	"q" => "z",
	"r" => "t",
	"s" => "n",
	"t" => "w",
	"u" => "j",
	"v" => "p",
	"w" => "f",
	"x" => "m",
	"y" => "a",
	"z" => "q",
	" " => " "
}

File.open(ARGV[0]).each_line do |line|
	line.chomp!
	ans = line.split("").map! { |letter| key[letter] }
	puts ans.join("") 
end