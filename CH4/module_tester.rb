# module を mixin すると、moduleで定義されたインスタンスメソッドにアクセスできるようになる。クラスメソッドではない。
# クラスオブジェクトに対してメッセージが反応するわけではないため。

module MyFirstModule
  def say_hello
    puts "Hello"
  end
end

class ModuleTester
  include MyFirstModule
end

mt = ModuleTester.new
mt.say_hello
