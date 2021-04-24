require 'time'

p t = Time.now
p t - 20
p t + 20

p dt = DateTime.now
p dt + 100
p dt >> 3
p dt << 10

d = Date.today
puts d.next
puts d.next_year
puts d.next_month(3)
puts d.prev_day(10)

next_week = d + 7
d.upto(next_week) { |date| puts "#{date} is a #{date.strftime("%A")}" }
