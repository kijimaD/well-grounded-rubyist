class C
  def C.no_dot
    puts "As long as self is C, you can call this method with no dot"
  end
  no_dot
end
C.no_dot

class C
  def x
    puts "This is method 'x'"
  end
  def y
    puts "This is method 'y', about to call x without a dot."
    x
  end
end

c = C.new
c.y
