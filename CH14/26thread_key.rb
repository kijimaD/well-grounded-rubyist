t = Thread.new do
  Thread.current[:message] = "Hello"
end
t.join
p t.keys
puts t[:message]
# >> [:message]
# >> Hello
