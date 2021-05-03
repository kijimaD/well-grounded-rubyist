str = "abcde"
str.each_byte { |b| p b }

str.each_char { |c| p c }

str = "100\u20ac"
str.each_codepoint { |cp| p cp }
str.each_byte{ |b| p b }

str = "This string\nhas three\nlines"
str.each_line { |l| puts "Next line: #{l}" }

str = "David!Alan!Black"
$/ = "!"
str.each_line { |l| puts "Next line: #{l}" }

string = "Hello"
p string.bytes
