a = 1
Thread.new { a = 2 }
a                               # => 1

t = Thread.new {  Thread.stop; a = 3 }
a                                      # => 1
t.run                                  # => #<Thread:0x000055a02d161fc0 -:5 run>
a                                      # => 1
sleep 0.2
a                                      # => 2
