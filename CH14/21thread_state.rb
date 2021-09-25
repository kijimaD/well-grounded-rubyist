t = Thread.new do
  puts "[Starting thread]"
  Thread.stop
  puts "[Resuming thread"
end
puts "Status of thread: #{t.status}"
puts "Is thread stopped? #{t.stop?}"
puts "Is thread alive? #{t.alive?}"
puts
puts "Waking up thread and joining it..."
t.wakeup
t.join
puts
puts "Is thread alive? #{t.alive?}"
puts "Inspect string for thread: #{t.inspect}"
# ~> -:12:in `join': No live threads left. Deadlock? (fatal)
# ~> 2 threads, 2 sleeps current:0x000055d06b81fd00 main thread:0x000055d06aec4ff0
# ~> * #<Thread:0x000055d06aef2d70 sleep_forever>
# ~>    rb_thread_t:0x000055d06aec4ff0 native:0x00007f1c87d48ec0 int:0
# ~>    -:12:in `join'
# ~>    -:12:in `<main>'
# ~> * #<Thread:0x000055d06b8336a0 -:1 sleep_forever>
# ~>    rb_thread_t:0x000055d06b81fd00 native:0x00007f1c84129700 int:0
# ~>     depended by: tb_thread_id:0x000055d06aec4ff0
# ~>    -:3:in `stop'
# ~>    -:3:in `block in <main>'
# ~> 	from -:12:in `<main>'
# >> Status of thread: run
# >> Is thread stopped? false
# >> Is thread alive? true
# >>
# >> Waking up thread and joining it...
# >> [Starting thread]
