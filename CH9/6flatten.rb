array = [1, 2, [3, 4, [5], [6, [7, 8]]]]
p array.flatten
p array.flatten(1)
p array.flatten(2)

# reverse
p [1, 2, 3, 4].reverse

# join
p ["abc", "def", 123].join

p a = %w{ one two three }
p a * "-"

# uniq
p [1, 2, 3, 1, 4, 3, 5, 1].uniq

# compact
p zip_codes = ["06511", "089", "999", nil, "10027", "0893", nil]
p zip_codes.compact
