lam = -> { puts "hi" }          # => #<Proc:0x0000558cb1146c78 -:1 (lambda)>
lam.call

mult = ->(x, y) { x * y }       # => #<Proc:0x0000558cb1146778 -:4 (lambda)>
mult.call(3, 4)                 # => 12
# >> hi
