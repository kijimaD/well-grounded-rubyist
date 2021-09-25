/(abc)/.match("abc")
t = Thread.new do # !> assigned but unused variable - t
  /(def)/.match("def")
  puts "$1 in thread: #{$1}"
end.join
puts "$1 outside thread: #{$1}"
# >> $1 in thread: def
# >> $1 outside thread: abc
