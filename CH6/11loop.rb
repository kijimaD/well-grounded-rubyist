n = 1
loop do
  puts n
  n = n + 1
  break if n > 9
end

n = 1
loop do
  puts n
  n = n + 1
  next unless n == 10
  break
end

n = 1
begin
  puts n
  n = n + 1
end while n < 10
puts "Done!"
# the body is executed once before the test is preformed.

n = 1
until n > 10
  puts n
  n = n + 1
end
