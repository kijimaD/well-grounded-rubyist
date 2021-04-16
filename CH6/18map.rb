# The difference between each and map lies in the return value.: each returns its receiver, but map returns a new array.

names = ["David", "Alan", "Block"]
p names.map { |name| name.upcase }

# mapで重要なこと: ブロックも値を返すことができる。
# mapping differs from simple iteration.

class Array
  def my_map
    c = 0
    acc = []
    until c == size
      acc << yield(self[c])
      c+= 1
    end
    acc
  end
end

names.map { |name| name.upcase }

# Unlike my_each, my_map stores the value that comes back from the block.

class Array
  # previous
  def my_each
    c = 0
    until c == size
      yield(self[c])
      c += 1
    end
    self
  end

  def my_map
    acc = []
    my_each { |e| acc << yield(e) }
  end
end

names.my_map { |name| name.upcase }
