require_relative '16caller_tools'

def x
  y
end

def y
  z
end

def z
  stack = CallerTools::Stack.new
  puts stack.report
end

x
# can't display with xmp-filter
#=> 17callertest.rb   12              z
#=> 17callertest.rb    8              y
#=> 17callertest.rb    4              x
#=> 17callertest.rb   16         <main>
