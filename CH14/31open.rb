d = open("|cat", "w+")
d                               # => #<IO:fd 9>
d.puts "Hello to cat"           # => nil
d.gets                          # => "Hello to cat\n"
d.close                         # => nil

open("|cat", "w+") { |p| p.puts("hi"); p.gets } # => "hi\n"
