def x
  y
end

def y
  z
end

def z
  puts "Stacktrace: "
  caller
end

x                               # => ["-:6:in `y'", "-:2:in `x'", "-:14:in `<main>'"]
# >> Stacktrace:

af
