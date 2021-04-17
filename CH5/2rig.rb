class C
  def x
    puts "Class C, method x:"
    puts self
  end
end

c = C.new
c.x
puts "That was a call to x by: #{c}"

puts "vvvclass methodvvv"
class C
  def C.x
    puts "Class method of class C"
    puts "self: #{self}"
  end
end
C.x
