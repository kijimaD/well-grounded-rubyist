[1, 2, 3].reverse.each { |e| puts e * 10 }

names = ["George Washington", "John Adams", "Thomas Jefferson", "James Madison"]
names.each_with_index do |pres, i|
  puts "#{i + 1}. #{pres}"
end

%w{a b c }.each_index { |i| puts i }

p "================"

letters = { "a" => "ay", "b" => "bee", "c" => "see" }
letters.each_with_index { |(key, value), i| puts i}

p array = %w{ red yellow blue }
p array.each.with_index do |color, i|
  puts "Color number #{i} is #{color}."
end

names.each.with_index(1) do |pres, i|
  puts "#{i} #{pres}"
end

(1..10).each { |i| print (i.to_s + ",") }

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p array.each_slice(3) { |slice| p slice }
p "================"
p array.each_cons(3) { |cons| p cons }
