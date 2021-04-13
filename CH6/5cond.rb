if x = 1
  puts "Hi!"
end

# warning: found `= literal' in conditional, should be ==

y = 1

if x = y
end

# no warning
