p [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].find { |n| n > 5 }
# => 6

p [1, 2, 3, nil, 4, 5, 6].find { |n| n.nil? }
# => nil

failure = lambda { 11 }
p over_ten = [1, 2, 3, 4, 5, 6].find(failure) { |n| n > 10 }
