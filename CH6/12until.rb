n = 1
n = n + 1 until n == 10
p n
puts "we've reached 10!"

a = 1
a += 1 until true
p a
# a still be 1; the a += 1 statement won't be executed, because true is already true.

a = 1
begin
  a += 1
end until true
p a
# get executed once.
