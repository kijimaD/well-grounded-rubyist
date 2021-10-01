class C
end
c = C.new
class << c
  def x
  end
  def y
  end
  def z
  end
  protected :y
  private :z
end
c.singleton_methods.sort        # => [:x, :y]
