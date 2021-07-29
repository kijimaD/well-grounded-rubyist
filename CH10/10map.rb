names = %w{ David Yukihiro Chad Amy}
names.map { |name| name.upcase } # => ["DAVID", "YUKIHIRO", "CHAD", "AMY"]
# the new array is the same size as the original array.

# using a symbol argument as a block
names.map(&:upcase) # => ["DAVID", "YUKIHIRO", "CHAD", "AMY"]

# each return s its receiver. So, never see this.
result = names.each { |name| name.upcase } # => ["David", "Yukihiro", "Chad", "Amy"]

# map returns a new object.
result = names.map { |name| name.upcase } # => ["DAVID", "YUKIHIRO", "CHAD", "AMY"]

# each exists purely for the side effects from the execution of the block.

array = [1, 2, 3, 4, 5]                 # => [1, 2, 3, 4, 5]
result = array.map { |n| puts n * 100 } # => [nil, nil, nil, nil, nil]
result # => [nil, nil, nil, nil, nil]

names = %w{ David Yukihiro Chad Amy} # => ["David", "Yukihiro", "Chad", "Amy"]
names.map!(&:upcase)                 # => ["DAVID", "YUKIHIRO", "CHAD", "AMY"]
names                                # => ["DAVID", "YUKIHIRO", "CHAD", "AMY"]
# >> 100
# >> 200
# >> 300
# >> 400
# >> 500
