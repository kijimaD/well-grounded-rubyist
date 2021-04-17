class Person
  def species
    "Homo sapiens"
  end
end

class Rubyist < Person
end

david = Rubyist.new
puts david.species
