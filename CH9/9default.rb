h = Hash.new
p h["no such key!"]

# default value
h = Hash.new(0)
p h["no such key!"]
p h # => {} # empty!!

# block
h = Hash.new { |hash, key| hash[key] = 0 }
print "current h: "
p h["new key!"]
p h
