require 'date'
p Date.parse("April 24 1705").england.strftime("%B %d %Y")

puts Date.new(1959, 2, 1)
puts Date.new()
puts Date.parse("03/6/9")
puts Date.parse("33/6/9")
puts Date.parse("77/6/9")

# ================
puts Date.parse("November 2 2013")
puts Date.parse("Nov 2 2013")
puts Date.parse("2 Nov 2013")
puts Date.parse("2013/11/2")

# ================
# You can create a time object using any of several constructors.

p Time.new
p Time.at(100000000)
p Time.mktime(2007,10,3,14,3,6)
require 'time'
p Time.parse("March 22, 1985, 10:35 PM")

# ================
# DateTime
puts DateTime.new(2009, 1, 2, 3, 4, 5)
puts DateTime.now
puts DateTime.parse("October 23, 1973, 10:34 AM")
