puts 'Top Level'
puts "self is #{self}"

class C
  puts 'Class definition block:'
  puts "self is #{self}"

  def self.x
    puts 'Class method C.x:'
    puts "self is #{self}"
  end

  def m
    puts 'Instance method C#m:'
    puts "self is #{self}"
  end
end

C.x
C.new.m

# ruby -e 'puts self'
# main

class C
  puts "Just started class C:"
  puts self
  module M
    puts "Nested module C::M:"
    puts self
  end
  puts "Back in the outer level of C:"
  puts self
end
