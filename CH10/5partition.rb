class Person
  attr_accessor :age
  def initialize(options)
    self.age = options[:age]
  end
  def teenager?
    (13..19) === age
  end
end

# generate
p people = 10.step(25, 3).map { |i| p Person.new(:age => i) }

# step
p 1.step.take(4)
p 10.step(by: -1).take(4)
p 3.step(to: 5) {|i| print i, " " }
p 1.step(10, 2) {|i| print i, " " }

# partition
p teens = people.partition { |person| person.teenager? }
puts "#{teens[0].size} teens; #{teens[1].size} non-teens"
