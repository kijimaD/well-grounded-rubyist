# empty class definition are false
if (class MyClass; end)
  puts "Empty class definition is true!"
else
  puts "Empty class definition is false!" # ✔
end

# noempty class definition. contain last value
if (class MyClass; 1; end)
  puts "Class definition with the number 1 in it is true!" # ✔
else
  puts "Class definition with the number 1 in it is false!"
end

# method definition are true
if (def m; return false; end)
  puts "Method definition is true!" # ✔
else
  puts "Method definition is false!"
end

# even if a call to the method return false, string is true
if "string"
  puts "String appear to be true!" # ✔
else
  puts "String appear to be false!"
end

if 100 > 50
  puts "100 is greater than 50!" # ✔
else
  puts "100 is not greater than 50!"
end

# ================

p class MyClass; end
# => nil
# special object

p class MyClass; 1; end
# => 1

p def m; return false; end
# => :m

p "string literal!"
# => "string literal!"
# Literal value as an expression is itself. literal object doesn't have to be calculated or processed into some other form when evaluated.

p (100 > 50)
# => true
# not just to something that has the Boolean value true, but to the object true.
