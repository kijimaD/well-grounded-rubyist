# (1..Float::INFINITY).select { |n| n % 3 == 0 }.first(10)
# never finish

# lazy enumerator
p (1..Float::INFINITY).lazy.select { |n| n % 3 == 0 }
p (1..Float::INFINITY).lazy.select { |n| n % 3 == 0 }.first(10)

my_enum = (1..Float::INFINITY).lazy.select { |n| n % 3 == 0 }
p my_enum.take(5).force
p my_enum.take(10).force

def fb_calc(i)
  case 0
  when i % 15
    "FixxBuzz"
  when i % 3
    "Fizz"
  when i % 5
    "Buzz"
  else
    i.to_s
  end
end

def fb(n)
  (1..Float::INFINITY).lazy.map { |i| fb_calc(i) }.first(n)
end

p fb(15)

# p328
