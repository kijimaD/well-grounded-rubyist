puts true.class
puts false.class

p (a = true)
# => true
p (a = 1 unless a)
# => nil
p a
# => true
p (b = a)
# => true

p String.instance_methods(false)
# Boolean arguments is that it's very hard to remember what they do.

# every Ruby expression is true or false in a Boolean sense.
# including the expression true and the expression false, too.
# The object true is true. ...

# The only objects that have a Boolean value of false are false and nil.
