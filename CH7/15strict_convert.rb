p "123abc".to_i
# => 123

# p Integer("123abc")
# => Integer': invalid value for Integer(): "123abc" (ArgumentError)

p Float("3")
# => 3.0
p Float("-3")
# => -3.0
# p Float("-3xyz")
# => Float': invalid value for Float(): "-3xyz" (ArgumentError)

# ================

p "Hello " + "there."
# => "Hello there."
# "Hello" + 10
# => TypeError

# an object responds to to_str -> used as argument to String#+
# "Hello".+("there".)
