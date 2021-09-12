require 'pathname'              # => false
path = Pathname.new("/usr/bin")       # => #<Pathname:/usr/bin>
path.basename                   # => #<Pathname:bin>

path.ascend do |dir|
  puts "Next level up: #{dir}"
end
# >> Next level up: /usr/bin
# >> Next level up: /usr
# >> Next level up: /
