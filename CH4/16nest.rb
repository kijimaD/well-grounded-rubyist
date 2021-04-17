module Tools
  class Hammer
  end
end

h = Tools::Hammer.new
p h

# 名前空間を分けたいときに使う

# そう言いそうになるが、オブジェクトがメソッドを持っているわけではない。クラスとモジュールがメソッドを持っている。
