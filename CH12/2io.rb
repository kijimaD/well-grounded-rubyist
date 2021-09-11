f = File.new("data.out", "w")   # => #<File:data.out>
f.puts "David A. Black, Rubyist" # => nil
f.close                          # => nil

puts File.read("data.out")      # => nil
f = File.new("data.out", "a")   # => #<File:data.out>
f.puts "Yukihiro Matsumoto, Ruby creator" # => nil
f.close                         # => nil
puts File.read("data.out")      # => nil

# block-based version of File.open
# file object is enumerable
File.open("records.txt") do |f|
  while record = f.gets
    name, nationality, instrument, dates = record.chomp.split('|')
    puts "#{name} (#{dates}, who was #{nationality},
played #{instrument}."
  end
end


count = 0
total_ages = File.readlines("members.txt").inject(0) do |total, line|
  count += 1
  fields = line.split
  age = fields[3].to_i
  total + age
end
puts "Average age of group: #{total_ages / count}." # => nil

count = 0
total_ages = File.open("members.txt") do |f|
  f.inject(0) do |total, line|
    count += 1
    fields = line.split
    age = fields[3].to_i
    total + age
  end
end
# >> David A. Black, Rubyist
# >> David A. Black, Rubyist
# >> Yukihiro Matsumoto, Ruby creator
# >> Pablo Casals (1876-1973, who was Catalan,
# >> played cello.
# >> Jascha Heifetz (1901-1988, who was Russian-American,
# >> played violin.
# >> Emanuel Feuermann (1902-1942, who was Austrian-American,
# >> played cello.
# >> Average age of group: 55.
