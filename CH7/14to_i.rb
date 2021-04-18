# p 1 + "2"
# => String can't be coerced into Integer (TypeError)

p "hello".to_i
# => 0
p "123hello".to_i
# => 123

print "Enter a number: "
n = gets.chomp # the getting number is string
puts n * 100

n = gets.to_i # the getting number is string
puts n * 100
