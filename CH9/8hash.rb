state_hash = { "Connecticut" => "CT",
               "Delaware"    => "DE",
               "New Jersey"  => "NJ",
               "Virginia"    => "VA" }
print "Enter the name of a state: "
state = "Delaware"
abbr = state_hash[state]
puts "The abbreviation is #{abbr}."

# four ways to create a hash:
# 1. literal cunstructor {}
# 2. Hash.new
# 3. Hash.[] method
# 4. top-level method whose name is Hash

p Hash["Conneticut", "CT", "Delaware", "DE"]
p Hash[ [[1, 2], [3, 4], [5, 6]] ]

# add
# state_hash.[]=("New York", "NY")
state_hash["New York"] = "NY"
p state_hash
state_hash.store("New York2", "NY2")
p state_hash

# overwrite
h = Hash.new
h["a"] = 1
h["a"] = 2
p h["a"] # => 2

# fetch
p conn_abbrev = state_hash.fetch("Connecticut")
p state_hash.fetch("Nebraska", "Unknown state")

# multi
p two_states = state_hash.values_at("New Jersey", "Delaware")
