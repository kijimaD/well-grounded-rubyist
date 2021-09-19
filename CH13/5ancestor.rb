class C
  def talk
    puts "original class!"
  end
end

module M
  def talk
    puts "module!"
  end
end

c = C.new
class << c
  include M
  puts "1 #{ancestors}"
end

class C
  include M
end

class << c
  puts "2 #{ancestors}"
end

# 2: singleton class of c and the class c...

# >> 1 [#<Class:#<C:0x0000557365353940>>, M, C, Object, Kernel, BasicObject]
# >> 2 [#<Class:#<C:0x0000557365353940>>, M, C, M, Object, Kernel, BasicObject]
