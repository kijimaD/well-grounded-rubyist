module M
  def report
    puts "'report' method in module M"
  end
end

class C
  include M
end

class D < C
end

obj = D.new
obj.report # module M


# method_missing はスペシャルmethod. BasicObject#method_missing. 最終的にここまでたどり着いて例外を出す。
# Object はKernelをmixinしてる。
# p.133の図がわかりやすい

# BasicObject, Object, Kernel はCで書かれている。
