def return_test
  l = lambda { return }
  l.call
  puts "Still here!"
  p = Proc.new { return }
  p.call
  puts "You won't see this message!"
end
return_test

# can return when lambda

lam = lambda { |x| p x }
lam.call(1)
lam.call # argument error when lambda

# ~> -:12:in `block in <main>': wrong number of arguments (given 0, expected 1) (ArgumentError)
# ~> 	from -:15:in `<main>'
# >> Still here!
# >> 1
