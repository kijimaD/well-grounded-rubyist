h1 = { "Smith" => "John",
       "Jones" => "Jane" }
h2 = { "Smith" => "Jim" }
h1.update(h2)
p h1["Smith"] # overwrite

# merge
h1 = { "Smith" => "John",
       "Jones" => "Jane" }
h2 = { "Smith" => "Jim" }
h1.merge(h2)
p h1["Smith"] # don't overwrite

# select
p h = Hash[1, 2, 3, 4, 5, 6]
p h.select { |k, v| k > 1 }

# reject
p h.reject { |k, v| k > 1 }

# invert
p h = { 1 => "one", 2=> "two" }
p h.invert

p h = { 1 => "one", 2 => "more than 1", 3 => "more than 1" }
p h.invert # {"one"=>1, "more than 1"=>3} # discard duplicate key

# clean
p h = { 1 => "one", 2 => "two" }.clear

# replace
p h = { 1 => "one", 2 => "two" }.replace({ 10 => "ten", 20 => "twenty" })

# common
p h.has_key?(1)
p h.include?(1)
p h.key?(1)
p h.member?(1)
p h.has_value?("three")
p h.value?("three")
p h.empty?
p h.size
