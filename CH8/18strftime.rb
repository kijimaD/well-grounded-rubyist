require 'time'

p t = Time.now
p t.strftime("%m-%d-%y")

p t.strftime("Today is %x")
p t.strftime("Otherwise known as %d-%b-%y")
p t.strftime("Or even day %e of %B, %Y.")
p t.strftime("The time is %H:%M.")

p Date.today.rfc2822
