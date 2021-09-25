require 'socket'
s = TCPServer.new(3939)
conn = s.accept
conn.puts "Hi. Here's the date."
conn.puts `date`
conn.close
s.close

# $ ruby 22socket.rb
# $ telnet localhost 3939

# Trying 127.0.0.1...
# Connected to localhost.
# Escape character is '^]'.
# nHi. Here's the date.
# 2021年  9月 24日 金曜日 09:27:07 JST
# Connection closed by foreign host.
