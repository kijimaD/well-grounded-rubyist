ticket = Object.new

def ticket.date
  "01/02/03"
end

def ticket.availability_status
  "sold"
end

def ticket.available?
  false
end

p Object.new.methods.sort

obj = Object.new
puts "The id obj #{obj.object_id}."
str = "String"
puts "The id str #{str.object_id}."
puts "The id 100 #{100.object_id}."
puts "The id 100 #{100.object_id}."

a = Object.new
b = a
puts "a: #{a.object_id}, b: #{b.object_id} => reference to same object"

string_1 = "Hello"
string_2 = "Hello"
puts "string_1's id is #{string_1.object_id}"
puts "string_2's id is #{string_2.object_id}"

obj = Object.new
if obj.respond_to?("talk")
  obj.talk
else
  puts "Sorry. Can't understand 'talk' message"
end

# if ticket.respond_to?(request)
#   puts ticket.send(request)
# else
#   puts "No such information available"
# end

obj = Object.new
def obj.one_arg(x)
  puts "I require one and only one argument!"
end
# obj.one_arg(1, 2, 3) # ticket.rb:47:in `one_arg': wrong number of arguments (given 3, expected 1) (ArgumentError)
obj.one_arg(1)

def obj.multi_args(*x)
  puts "I can take zero or more arguments! arg: #{x}"
end
obj.multi_args
obj.multi_args(1)
obj.multi_args(1, 2)

def two_or_more(a, b, *c)
  p a, b, c
end

two_or_more(1, 2)
two_or_more(1, 2, 3)
two_or_more(1, 2, 3, 4, 5, 6)

def default_args(a, b, c=1)
  puts "Values of variables: ", a, b, c
end

default_args(1, 2)
default_args(1, 2, 3)

def mixed_args(a, b, *c, d)
  puts "args:"
  p a, b, c, d
end

mixed_args(1, 2, 3, 4, 5)
mixed_args(1, 2, 3)

def args_unleashed(a, b=1, *c, d, e)
  puts "Arguments:"
  p a, b, c, d, e
end

args_unleashed(1, 2, 3, 4, 5)
args_unleashed(1, 2, 3, 4)
args_unleashed(1, 2, 3)
# args_unleashed(1, 2 # wrong number of arguments (given 2, expected 3+) (ArgumentError))

def all_optional (* args)
end

# def broken_args(x, *y, z=1)
# end

def non_broken_args(x, y=1, *z)
end
