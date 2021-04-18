obj = Object.new
puts obj
# => #<Object:0x0000560d0757ce10>

def obj.to_s
  "I'm an object!"
end

puts obj
# => I'm an object!

puts "My object says: #{obj}"
# => My object says: I'm an object!
