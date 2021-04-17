def Object.event
  "aaa"
end
p Object.event # individual. Not scale

class Ticket
  def event
    "Can't really be specified yet..."
  end
  # def ticket.price など、特定オブジェクトに関するメソッドはシングルトンメソッド。
end

ticket = Ticket.new
puts ticket.event

class C
  def m
    puts "First definition"
  end

  def m
    puts "Second definition"
  end
end

p C.new.m

class C
  def x
  end
end

class C # reopening classes
  def y
  end
end
p C.new.x
p C.new.y

t = Time.new
# t.xmlschema # undefined method error

# add class
require 'time'
p t.xmlschema

ticket = Object.new
def ticket.price
  p 117.50
end
ticket.price
