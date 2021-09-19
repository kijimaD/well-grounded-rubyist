class Person
  attr_accessor :name
end

david = Person.new
david.name = "David"
matz = Person.new
matz.name = "Matz"
ruby = Person.new
ruby.name = "Ruby"

def david.name
  "[not available]"
end

"named #{matz.name}"            # => "named Matz"
"one named #{david.name}"       # => "one named [not available]"
"and one named #{ruby.name}"    # => "and one named Ruby"

# need to add definition to each object? No!

module Secretive
  def name
    "[not available]"
  end
end

class << ruby
  include Secretive
end

"named #{matz.name}"            # => "named Matz"
"one named #{david.name}"       # => "one named [not available]"
"and one named #{ruby.name}"    # => "and one named [not available]"
