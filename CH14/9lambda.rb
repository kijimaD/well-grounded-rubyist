lam = lambda { puts "A lambda!" }
lam                             # => #<Proc:0x000055dcf0bc3888 -:1 (lambda)>
lam.call
# >> A lambda!
