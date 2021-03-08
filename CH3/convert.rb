class Temperature
  def Temperature.c2f(celsius)
    celsius * 9.0 / 5 + 32
  end

  def Temperature.f2c(fahrenheit)
    (fahrenheit - 32) * 5 / 9.0
  end
end

puts Temperature.c2f(100)
puts Temperature.f2c(212)

# クラスメソッドとインスタンスメソッドは根本から違うというわけではない。どちらもメソッドで、オブジェクトへのメッセージ送信によってトリガーされる。

# このように概念を階層化して考えることがポイント
