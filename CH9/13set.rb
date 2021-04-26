require 'set'
new_england = ["Connecticut", "Maine", "Massachusetts",
               "New Hampshire", "Rhode Island", "Vermont"]
p state_set = Set.new(new_england)

names = ["David", "Yukihiro", "Chad", "Amy"]
p name_set = Set.new(names) { |name| name.upcase }

# Add
p tri_state = Set.new(["New Jersey", "New York"])
p tri_state << "Connecticut"
p tri_state << "Connecticut" # second time
p tri_state.add?("Pennsylvania")

# operation
p tri_state = Set.new(["Connecticut", "New Jersey", "New York"])

# Subtraction
p state_set - tri_state # => #<Set: {"Maine", "Massachusetts", "New Hampshire", "Rhode Island", "Vermont"}>

# Add
p state_set + tri_state # => #<Set: {"Connecticut", "Maine", "Massachusetts", "New Hampshire", "Rhode Island", "Vermont", "New Jersey", "New York"}>

# Intersection
p state_set & tri_state
p state_set | tri_state

# exclusive union
p state_set ^ tri_state

# merge
p tri_state = Set.new(["Connecticut", "New Jersey"])
p tri_state.object_id
p tri_state.merge(["New York"])
p tri_state.object_id

# merge
p s = Set.new([1, 2, 3])
p s.merge({ "New Jersey" => "NJ", "Maine" => "ME" })

p state_set = Set.new(["New York", "New Jersey"])
p state_hash = { "Maine" => "ME", "Vermont" => "VT" }
p state_set.merge(state_hash.keys)
