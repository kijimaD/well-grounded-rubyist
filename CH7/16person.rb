# respond to to_str

class Person
  attr_accessor :name
  def to_str
    name
  end
end

david = Person.new
david.name = "David"
puts "David is named " + david + "."

# ================

class NotToStr
end

not_to_str = NotToStr.new
puts not_to_str + "aa"
# => undefined method `+' for #<Person2:0x000055b04ea70f18> (NoMethodError)
