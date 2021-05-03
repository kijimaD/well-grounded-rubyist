p [1, 2, 3, 4].first
p (1..10).first
{ 1 => 2, "one" => "two" }.first
# => [1, 2]

p hash = { 3 => "three", 1 => "one", 2 => "two" }
p hash.first
p hash[3] = "trois"
p hash.first

class Die
  include Enumerable
  def each
    loop do
      yield rand(6) + 1
    end
  end
end

puts "Welcome to 'You Win If You Roll a 6'!"
d = Die.new
d.each do |roll|
  puts "You rolled a #{roll}."
  if roll == 6
    puts "You win!"
    break
  end
end

# don't have last method because unreachablity of the end of the enumeration
# Someclass, Array and Range ... have last method.

# take
p states = %w{ NJ NY CT MA VT FL }
p states.take(2)
p states.drop(2)
p states.take_while { |s| /N/.match(s) }
p states.drop_while { |s| /N/.match(s) }
