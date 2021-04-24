p %w{ David A. Black }
p %w{ David\ A.\ Black is a Rubyist. }
p %W{ David is #{2014 - 1959} years old. }

p %i{ a b c}

d = "David"
p %I{"#{d}"}

# try_convert
obj = Object.new
p Array.try_convert(obj)
def obj.to_ary
  [1, 2, 3]
end
p Array.try_convert(obj)
def obj.to_ary
  "Not an array!"
end
# Array.try_convert(obj) # type error

a = [1, 2, 3, 4, 5]
a[0] = "first"
p a
