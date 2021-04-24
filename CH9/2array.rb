p Array.new(3)
p Array.new(3, "abc")

n = 0
p Array.new(3) { n += 1; n * 10 }

# object init
a = Array.new(3, "abc")
p a[0] << "def"
p a # all change!

b = Array.new(3) { "abc" }
p b[0] << "def"
p b # only value of index 0 is changed!

# construct ====
p [1, 2, "three", 4, []]

# index ====
p [1, 2, 3][1]

# method ====
# Kernel#Array(arg1)
# First tries to call to_ary on arg, then to_a.
Array
string = "A string"
p string.respond_to?(:to_ary)
p string.respond_to?(:to_a)
p Array(string)

def string.to_a
  split(//)
end

p Array(string)

# Among array constructor, the literal [] > Array.new > Kernel#Array
