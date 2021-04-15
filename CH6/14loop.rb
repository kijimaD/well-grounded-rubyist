def my_loop
  while true
    yield
  end
end

def my_loop_short
  yield while true
end

# my_loop { puts "My-looping forever!" } # loop

# arguments and code block are diffrent!!

# loop { puts "Hi" }
# loop() {  puts "Hi" }
string = "aaaaa,aaa,aaa"
string.scan(/[^,]+/)
string.scan(/[^,]+/) { |word| puts word }

# optional block.
# ..code block as a syntactic element of the method call, you'll be able to keep things straight...
