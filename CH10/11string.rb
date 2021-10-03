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

# >> 97
# >> 98
# >> 99
# >> 100
# >> 101
# >> "a"
# >> "b"
# >> "c"
# >> "d"
# >> "e"
# >> 49
# >> 48
# >> 48
# >> 8364
# >> 49
# >> 48
# >> 48
# >> 226
# >> 130
# >> 172
# >> Next line: This string
# >> Next line: has three
# >> Next line: lines
# >> Next line: David!
# >> Next line: Alan!
# >> Next line: Black
# >> [72, 101, 108, 108, 111]
