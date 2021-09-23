pr = Proc.new { puts "Inside a Proc's block" }
pr.call
# Inside a Proc's block

def call_a_proc(&block)
  block.call
end

call_a_proc { puts "I'm the block...or Proc...or something." }
# I'm the block...or Proc...or something.

p = Proc.new { |x| puts x.upcase }
%w{ David Black }.each(&p)
# DAVID
# BLACK

[1, 2, 3].each { |x| puts x * 10 }
# 10
# 20
# 30

# code block is not an object.
# code blocks aren't method arguments.
# When you provide a code block, you are not sending the block to the method as an argument; you're provideing a code block, and that's a thing unto itself.

# ~> -:23:in `<main>': undefined method `c2f' for main:Object (NoMethodError)
# >> Inside a Proc's block
# >> I'm the block...or Proc...or something.
# >> DAVID
# >> BLACK
# >> 10
# >> 20
# >> 30
