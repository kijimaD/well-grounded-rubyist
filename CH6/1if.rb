if 1
  # inside
end

x = 11
if x > 10 then puts x end

if x > 10; puts x; end

if 1
  "condition true"
elsif 0
  "condition1 false and condition2 true"
else
  "condition false"
end

print "Enter an integer: "
n = gets.to_i
if n > 0
  puts "Your number is positive."
elsif n < 0
  puts "Your number is negative."
else
  puts "Your number is zero."
end

if not (x == 1)
end

if !(x == 1)
end

if not x == 1
end

if !x == 1 # (!x) == 1
end

puts "Big number!" if x > 100
