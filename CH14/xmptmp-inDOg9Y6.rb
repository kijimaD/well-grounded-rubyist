require 'open3'
stdin, stdout, stderr = Open3.popen3("cat") # => [#<IO:fd 8>, #<IO:fd 9>, #<IO:fd 11>, #<Process::Waiter:0x00005616da9a1590 run>] # !> assigned but unused variable - stderr

stdin.puts("Hi.\nBye")          # => nil
stdout.gets                     # => "Hi.\n"
stdout.gets                     # => "Bye\n"


stdin, stdout, stderr = Open3.popen3("cat")
t = Thread.new do
  loop { stdin.puts gets }
end
u = Thread.new do
  n = 0
  str = ""
  loop do
    str << stdout.gets
    n += 1
    if n % 3 == 0
      puts "--------\n"
      puts str
      puts "--------\n"
      str = ""
    end
  end
end
t.join
u.join
