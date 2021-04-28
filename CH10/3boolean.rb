states = { "Connecticut" => "CT",
               "Delaware"    => "DE",
               "New Jersey"  => "NJ",
               "Virginia"    => "VA" }

p states.include?("Louisiana") # consults hash's keys

# Do all states include a space?
p states.all? { |state| state =~ / / } # Hash yields key/value pairs to block

# Is there one, and only one, state with "West" in its name?
p states.any? { |state| state =~ /West/ }

# Are there no states with "East" in their names?
p states.none? { |state| state =~ /East/ }

p states.keys.all? { |state, abbr| state =~ / / }

p states.each { |pair| pair }

# ================
p r = Range.new(1, 10)
p r.one? { |n| n == 5 }
p r.none? { |n| n % 2 == 0 }
p r = Range.new(1.0, 10.0)

# p r.one? { |n| n == 5 } # `each': can't iterate from Float (TypeError)

p r  = Range.new(1, 10.3)
p r.any? { |n| n > 5 }
