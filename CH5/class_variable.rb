# class variables aren't class scoped.
# the idea behind a class variable is that is provides a storage mechanism that's shared between a class and instances of that class, ant that's not visible to any other objects.

# puts "Counting total cars..."
# puts "There are #{Car.total_count}."

# Counting total cars...
# There are 3.

# Knowledge of this kind resides in the class, not in the individual cars.

class Car
  @@makes = []
  @@cars = {}
  @@total_count = 0
  attr_reader :make

  def self.total_count
    @@total_count
  end

  def self.add_make(make)
    unless @@makes.include?(make)
      @@makes << make
      @@cars[make] = 0
    end
  end

  def initialize(make)
    if @@makes.include?(make)
      puts "Creating a new #{make}!"
      @make = make
      @@cars[make] += 1
      @@total_count += 1
    else
      raise "No such make: #{make}."
    end
  end

  def make_mates
    @@cars[self.make]
  end
end

# x = Car.new("Brand x") # No such make.
Car.add_make("Honda")
Car.add_make("Toyota")
Car.new("Honda")
toyota = Car.new("Toyota")
honda = Car.new("Honda")
p toyota.make_mates
p honda.make_mates
p "total: " + Car.total_count.to_s
