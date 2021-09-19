"Hello".tap { |string| puts string.upcase }.reverse # => "olleH"

"Hello".tap {  }                # => "Hello"

# tap return receiver copy.

# >> HELLO
