# Object can masquerade as arrays if they have a to_ary method.
class Person
  attr_accessor :name, :age, :email
  def to_ary
    [name, age, email]
  end
end

david = Person.new
david.name = "David"
david.age = 55
david.email = "david@whatever"
array = []
array.concat(david)
p array

# concat
array1 = [1, 2]
array2 = [3, 4]
p array1.concat(array2)
# => [1, 2, 3, 4]
