class C
  puts "Just inside class definition block. Here's self:"
  p self
  @v = "I am an instance variable at the top level of a class body."
  puts"And here's the instance variable @v, belonging to #{self}:"
  p @v
  def show_var
    puts "Inside an instance method definition block. Here's self:"
    p self
    puts "And here's the instance variable @v, belonging to #{self}:"
    p @v # => nil.clsss's @v had nothing to do with the instance's @v.
  end
end
c = C.new
c.show_var
