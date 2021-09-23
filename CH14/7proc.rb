def make_counter
  n = 0
  return Proc.new { n += 1 }
end

c = make_counter
puts c.call
puts c.call
d = make_counter
puts d.call
puts c.call
# >> 1
# >> 2
# >> 1
# >> 3
