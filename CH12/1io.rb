# p360

STDERR.class                    # => IO
STDERR.puts("Problem!")          # => nil
STDERR.write("Problem!\n")       # => 9

# This constants are automatically set when the program starts.
# STDERR is an IO object.

STDIN.each { |line| p line }    # => #<IO:<STDIN>>
STDIN.select { |line| line =~ /\A[A-Z]/ } # => []
STDIN.map { |line| line.reverse }         # => []

# p363

# if true
#   STDERR.puts "There's a problem!"
# end

record = File.open("/tmp/record", "w")
old_stdout = $stdout # !> assigned but unused variable - old_stdout
$stdout = record
$stderr = $stdout
puts "This is a record"
z = 10 / 0
# to /tmp/record
