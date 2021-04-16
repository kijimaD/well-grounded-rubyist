5.times { puts "Writing this 5 times!" }

# 時間の振る舞いは、ブロックに譲ることとメソッドから戻ることは2つの異なることであるという事実をうまく示しています。メソッドは、ゼロから無限大までの任意の回数、ブロックに譲ることができます。

# a method call causes the method to run once and to return once.

5.times { |i| puts "I'm on iteration #{i}!" }

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

5.my_times { |i| puts "(my)I'm on iteration #{i}!" }
