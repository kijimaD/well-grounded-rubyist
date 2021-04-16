def block_scope_demo
  x = 100
  1.times do
    puts x
  end
end

block_scope_demo
# => 100

def block_scope_demo_2
  x = 100
  1.times do
    x = 200
  end
  puts x
end
block_scope_demo_2
# 200

# Blocks have direct access to variables that already exist.

# Block parameter and existed variable is different.
p "--------------"
def block_local_parameter
  x = 100
  [1, 2, 3].each do |x|
    puts "Parameter x is #{x}"
    x = x + 10
    puts "Reassigned to x in block; it's now #{x}"
  end
  puts "Outer X is still #{x}"
end
block_local_parameter

p "--------------"
def block_local_variable
  x = "Original x!"
  3.times do |i; x|
    x = i
    puts "x in the block is now #{x}"
  end
  puts "x after the block ended is #{x}"
end
block_local_variable
