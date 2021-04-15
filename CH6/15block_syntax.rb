p array = [1, 2, 3]

p array.map { |n| n * 10 }
p array.map do |n| n * 10 end

puts array.map { |n| n * 10 } # puts handle array
# => puts(array.map { |n| n * 10 })
puts [10, 20, 30]


puts array.map do |n| n * 10 end
# => puts(array.map) do |n| n * 10 end

# > The map method works through an array one item at a time, calling the code block once for each item and creating a new array consisting of the results of all of those calls to the block.
