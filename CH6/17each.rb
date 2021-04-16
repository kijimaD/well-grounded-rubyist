array = [1, 2, 3, 4, 5]
p array.each { |e| puts "The block just got handed #{e}." }

# last line is the return value of each.

class Array
  def my_each
    c = 0
    until c == size
      yield(self[c])
      c += 1
    end
    self
  end
end

array.my_each { |e| puts "(my_each) The block just got handed #{e}." }

# previous code
class Integer
  def my_times
    c = 0
    until c == self
      yield(c)
      c += 1
    end
    self
  end
end

class Array
  def my_each2
    size.my_times do |i|
      yield(self[i])
    end
    self
  end
end

array.my_each2 { |e| puts "(my_each2) #{e}" }
