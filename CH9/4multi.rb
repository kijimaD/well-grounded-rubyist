p a = ["red", "orange", "yellow", "purple", "gray", "indigo", "violet"]
p a[3, 2]
p a[3, 2] = "green", "blue" # syntactic sugar for a.[]=(3, 2, ["green", "blue"])
p a

# values_at
array = ["the", "dog", "ate", "the", "cat"]
articles = array.values_at(0, 3)
p articles # => ["the", "ate"]

# unshift
a = [1, 2, 3, 4]
p a.unshift(5)

# push
a = [1, 2, 3, 4]
p a.push(5)

# <<
a = [1, 2, 3, 4]
p a << 5

a = [1, 2, 3, 4, 5]
p a.push(6, 7, 8)

# pop
a = [1, 2, 3, 4, 5]
print "The original array: "
p a
popped = a.pop
print "The popped item: "
puts popped
print "The new state of the array: "
p a
shifted = a.shift
print "The shifted item: "
puts shifted
print "The new state of the array: "
p a

p "================"
p a = %w{ one two three four five }
p a.pop(2)
p a
p a.shift(2)
p a
