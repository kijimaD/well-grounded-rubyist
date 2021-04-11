# every time a method is called -- even if a previous call to the mothod is still in the process of running -- a new local scope is generated.

class C
  def x(value_for_a,recurse=false)
    a = value_for_a
    print "Here's the inspect-string for 'self':"
    p self
    puts "And here's a:"
    puts a
    if recurse
      puts "Calling myself (recursion)...vvvvvvvv"
      x("Second value for a")
      puts "Back after recursion; here's a:"
      puts a
      puts "^^^^^^^^"
    end
  end
end

c = C.new
c.x("First value for a", true)

# Here's the inspect-string for 'self':#<C:0x000055ad0cdc7c88>
# And here's a:
# First value for a
# Calling myself (recursion)...vvvvvvvv
# Here's the inspect-string for 'self':#<C:0x000055ad0cdc7c88>
# And here's a:
# Second value for a
# Back after recursion; here's a:
# First value for a
# ^^^^^^^^

# every call to x generates a new local scope, even though self doesn't change,.
