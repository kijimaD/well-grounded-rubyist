# The special object nil is, indeed, an object (it's the only instance of a class called NilClass).

p @x
# => nil
# If you try this with a local variable, you'll get an error.

p ["one", "two", "three"][9]
# => nil

p nil.to_s
# => ""

p nil.to_i
# => 0

p nil.object_id
# => 8

# nil and false are the only two objects in Ruby with a Boolean value of false.
