module MeFirst
  def report
    puts "Hello from module!"
  end
end

class Person
  prepend MeFirst
  def report
    puts "Hello from class!"
  end
end

p = Person.new
p.report # Win module! Because prepend

p Person.ancestors # [MeFirst, Person, Object, Kernel, BasicObject]
# Mefirstが先に読み込まれていることがわかる。なのでModuleが勝つ。
