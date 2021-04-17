def talk
  puts "Hello"
end

## same meaning

class Object
  private
  def talk
    puts "Hello"
  end
end

puts "Trying 'talk' with no receiver..."
talk
puts "Trying 'talk' with an explicit receiver..."
obj = Object.new
# obj.talk # private method error
