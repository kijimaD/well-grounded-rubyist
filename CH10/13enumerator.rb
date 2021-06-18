e = Enumerator.new do |y|
  y << 1
  y << 2
  y << 3
end
# y はブロックに渡される。

p e

p e.to_a
p e.map { |x| x * 10 }
p e.select { |x| x > 1 }
p e.take(2)

# e はオブジェクトを含んでいるわけではない。

e = Enumerator.new do |y|
  (1..3).each { |i| y << i }
end

p e # 前と同じ

e = Enumerator.new do |y|
  puts "Starting up the block!"
  (1..3).each { |i| y << i }
  puts "Existing the block!"
end
p e.to_a
p e.select { |x| x > 2 }

# Starting up the block!
# Existing the block!
# [1, 2, 3]
# Starting up the block!
# Existing the block!
# [3]

# 最初にブロック以外の部分が評価される。なので先にputsの内容が来る。gi
# p315

p ["2",1,5,"3",4,"6"].sort_by {|a| a.to_i }
# [1, "2", "3", 4, 5, "6"]

a = [1, 2, 3, 4, 5]
e = Enumerator.new do |y|
  total = 0
  until a.empty?
    total += a.pop
    y << total
  end
end

p e.take(2)
# => [5, 9]
p a
# => [1, 2, 3]
p e.to_a
# => [3, 5, 6]
p a
# => []

# ================

names = %w{ David Black Yukihiro Matsumoto }
e = names.enum_for(:select)
# bind this enumerator to the method
p e.each { |n| n.include?('a') }
# ["David", "Black", "Matsumoto"]

e = names.enum_for(:inject, "Names: ")
p e
#<Enumerator: ["David", "Black", "Yukihiro", "Matsumoto"]:inject("Names: ")>
p e.each { |string, name| string << "#{name}..." }
"Names: David...Black...Yukihiro...Matsumoto..."

# イテレータとは、ブロックに値をyieldするメソッドである。

str = "Hello"
str.each_byte { |b| puts b }
# 72
# 101
# 108
# 108
# 111

p str.each_byte
#<Enumerator: "Hello":each_byte>
p str.enum_for(:each_byte)
#<Enumerator: "Hello":each_byte>

#317

array = %w{ cat dog rabbit }
p e = array.map
#<Enumerator: ["cat", "dog", "rabbit"]:map>
p e.each { |animal| animal.capitalize }
# ["Cat", "Dog", "Rabbit"]

p h = { "cat" => "feline", "dog" => "canine", "cow" => "bovine" }
# {"cat"=>"feline", "dog"=>"canine", "cow"=>"bovine"}
p h.select { |key, value| key =~ /c/ }
# {"cat"=>"feline", "cow"=>"bovine"}

p e = h.to_enum

p h.each {  }
# {"cat"=>"feline", "dog"=>"canine", "cow"=>"bovine"}
p e.each {  }
# {"cat"=>"feline", "dog"=>"canine", "cow"=>"bovine"}

p e.select { |key, value| key =~ /c/ }
# [["cat", "feline"], ["cow", "bovine"]]
# 配列が返る

# Enumerable#select と Hash#select の違い。
