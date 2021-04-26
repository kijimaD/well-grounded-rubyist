p r = Range.new(1, 100)
p r = Range.new(1, 100, true)
p r = 1..100 # inclusive
p r = 1...100 # exclusive

s = 1..2
s.each { |s| p s } # 1 2
s = 1...2 # 2 now sits outside the range...
s.each { |s| p s } # 1

p "================"
r = 1..10
p r.begin
p r.end
p r.exclude_end?

p r = "a".."z"
p r.cover?("a")
p r.cover?("abc")
p r.cover?("A")
p r.cover?([])

# include
# include 26 values that lie inclusively between "a" and "z".
p r.include?("a") # true
p r.include?("abc") # false

# range can't be interpreted as a finite collection, the include? method falls back on numerical order and comparison.
r = 1.0..2.0
p r.include?(1.5) # true

# backward range
r = 100...1
p r.include?(50) # false ...

p "This is a sample string"[10..-5]
p ['a', 'b', 'c', 'd'][0..-2]
p ['a', 'b', 'c', 'd'][0...-2]
