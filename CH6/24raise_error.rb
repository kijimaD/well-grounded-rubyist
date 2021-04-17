def fussy_method(x)
  raise ArgumentError, "I need a number under 10" unless x < 10
end

begin
  fussy_method(20)
rescue ArgumentError => e
  puts "That was not an acceptable number!"
  puts "Here's the backtrace for this exception:"
  puts e.backtrace
  puts "And here's the exception object's message:"
  puts e.message
end

# In the rescue clause, we assign the exception object to the variable e...

p "-----------"
begin
  raise ArgumentError
rescue => e
  p e.class
end
# The language of exception raising is class-based: raise ZeroDivisionError rather than raise ZeroDivisionError.new.

# The object's classis ArgumentError; the object itself is an instance of Argument-Error, not the class ArgumentError.

p "================"
logfile="log.txt"
filename="goal.txt"
begin
  fh = File.open(filename)
rescue => e
  logfile.puts("User tried to open #{filename}, #{Time.now}")
  logfile.puts("Exception: #{e.message}")
  raise
end
