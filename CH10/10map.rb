names = %w{ David Yukihiro Chad Amy}
p names.map { |name| name.upcase }
# the new array is the same size as the original array.

# using a symbol argument as a block
p names.map(&:upcase)

# each return s its receiver. So, never see this.
p result = names.each { |name| name.upcase }
# => [David, Yukihiro, ...

# map returns a new object.
p result = names.map { |name| name.upcase }
# => [DAVID, YUKIHIRO, ...]

# each exists purely for the side effects from the execution of the block.

array = [1, 2, 3, 4, 5]
result = array.map { |n| puts n * 100 }
p result
# => [nil, nil, nil, nil, nil]

names = %w{ David Yukihiro Chad Amy}
names.map!(&:upcase)
p names
