class C
  def talk
    puts "Method-grabbing test! self is #{self}."
  end
end

c = C.new
meth = c.method(:talk)        # => #<Method: C#talk() -:2>
meth.call
# >> Method-grabbing test! self is #<C:0x000055c3235d7820>.
