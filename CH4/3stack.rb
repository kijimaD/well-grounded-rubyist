require_relative "stacklike"
class Stack
  include Stacklike # constant. Differ from require/load
end

# class: noun
# module: adjective

s = Stack.new
s.add_to_stack("item one")
s.add_to_stack("item two")
s.add_to_stack("item three")

puts s.stack
puts "-----------"

taken = s.take_from_stack
puts s.stack
