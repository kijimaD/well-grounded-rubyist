class Person
  def initialize(&block)
    instance_eval(&block)
  end

  def name(name=nil)
    @name ||= name
  end

  def age(age=nil)
    @age ||= age
  end
end

david = Person.new do
  name("David")
  age(55)
end

david  # => #<Person:0x000055a5584b72f8 @name="David", @age=55>
