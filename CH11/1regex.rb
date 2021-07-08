# p330
//.class
# => Regexp

puts "Match!" if /abc/.match("The alphabet starts with abc.")
puts "Match!" if "The alphabet starts with abc.".match(/abc/)

puts "Match!" if /abc/ =~ "The alphabet starts with abc."
puts "Match!" if "The alphabet starts with abc." =~ /abc/

p "The alphabet starts with abc" =~ /abc/
# 25
p /abc/.match("The alphabet starts with abc.")
# #<MatchData "abc">

# p334
