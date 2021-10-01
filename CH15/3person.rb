class Person
  attr_accessor :name, :age
  def initialize(name, age)
    @name, @age = name, age
  end

  def method_missing(m, *args, &block)
    if /set_(.*)/.match(m)
      self.send("#{$1}=", *args)
    else
      super
    end
  end

  # def respond_to_missing?(m, include_private = false)
  #   /set_/.match(m) || super
  # end
end

person = Person.new("David", 54)
person.set_age(55)
person.age                      # => 55
person.respond_to?(:set_age)    # => false
