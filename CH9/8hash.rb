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
