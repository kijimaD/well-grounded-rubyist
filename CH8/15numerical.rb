n = 99.6 # numbers know how to round themselves
m = n.round
puts m
x = 12
if x.zero?
  puts "x is zero"
else
  puts "x is not zero"
end
puts "The ASCII character equivalent of 97 is #{97.chr}"

# Numeric
#   |- Float
#   |- Integer
#      |- Fixnum
#      |- Bignum

p (1 + 1).class
p (10 / 5).class
p (16 / 5).class
p (16 / 3.3).class # Float
p (1.2 + 3.4).class # Float

p "10".to_i(17)
p "12345".to_i(13)
p "ruby".to_i(35)

1.+(1)
12./(3)
-12.-(-7)
