p str = "Hi "
p "#{str} there."

# interpolate any code
p "My name is #{class Person
                  attr_accessor :name
                end
                d = Person.new
                d.name = "David"
                d.name
                }."

# ================
class Person
  attr_accessor :name
  def to_s
    name
  end
end
david = Person.new
david.name = "David"
p "Hello, #{david}"
