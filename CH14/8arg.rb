pr = Proc.new { |x| puts "Called with argument #{x}" }
pr.call(100)

pr.call # no error
pr.call(100, 101, 102)
# >> Called with argument 100
# >> Called with argument
# >> Called with argument 100
