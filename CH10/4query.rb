p [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].find { |n| n > 5 }
# => 6

p [1, 2, 3, nil, 4, 5, 6].find { |n| n.nil? }
# => nil

failure = lambda { 11 }
p over_ten = [1, 2, 3, 4, 5, 6].find(failure) { |n| n > 10 }

# find_all
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p a.find_all { |item| item > 5 }
p a.select { |item| item > 100 }

# reject
p a.reject { |item| item > 5 }

# grep
colors = %w{ red orange yellow green blue indigo violet}
p colors.grep(/o/)

miscellany = [ 75, "hello", 10...20, "goodbye" ]
p miscellany.grep(String)
p miscellany.grep(50..100)
# enumerable.select { |element| expression === element }

# grep can take a block
colors = %w{ red orange yellow green blue indigo violet}
p colors.grep(/o/) { |color| color.capitalize }
# enumerable.select { |item| expression === item }.map { |item| ... }

# group_by
colors = %w{ red orange yellow green blue indigo violet}
p colors.group_by { |color| color.size }
