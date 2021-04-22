# encoding: UTF-8

puts __ENCODING__

str = "Test string"
p str.encoding
str.encode!("US-ASCII")
p str.encoding

str << ". Euro symbol: \u20AC"
p str
p str.encoding
