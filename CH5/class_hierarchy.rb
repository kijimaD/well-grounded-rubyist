class Parent
  @@value = 100
end

class Child < Parent
  @@value = 200
end

class Parent
  puts @@value # 200
end

# Parent and Child share the class variables
