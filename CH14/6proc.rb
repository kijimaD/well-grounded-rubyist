def call_some_proc(pr)
  a = "irrelevant 'a' in method scope"
  puts a
  pr.call
end

a = "'a' to be used in Proc block"
pr = Proc.new { puts a }

pr.call
call_some_proc(pr)

# Closures are important because they preserve the partial running state of a program.

# >> 'a' to be used in Proc block
# >> irrelevant 'a' in method scope
# >> 'a' to be used in Proc block
