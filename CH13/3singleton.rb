# singleton object method definition

str = "I am a string"
class << str
  def twice
    self + " " + self
  end
end
str.twice                       # => "I am a string I am a string"

# ---- almost same

def str.meth # !> previous definition of meth was here
end

class << str
  def meth # !> method redefined; discarding old meth
  end
end

# ----

N = 1
obj = Object.new
class << obj
  N = 2
end

def obj.a_method
  N
end

class << obj
  def another_method
    N
  end
end

obj.a_method                    # => 1
obj.another_method              # => 2
