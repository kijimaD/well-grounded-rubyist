t = Thread.new do
  puts "Starting the thread"
  sleep 1
  puts "At the end of the thread"
end
puts "Outside the thread"
t.join
# >> Outside the thread
# >> Starting the thread
# >> At the end of the thread
