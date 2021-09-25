c = Class.new
c.class_eval do
  def some_method
    "Created in class_eval"
  end
end
c_instance = c.new
c_instance.some_method          # => "Created in class_eval"


var = "initialized variable"
class C
   # var # error!
end

C.class_eval { var }            # => "initialized variable"

C.class_eval { def talk; puts var; end } # => :talk
# C.new.talk # -:18:in `talk': undefined local variable or method `var' for #<C:0x000055b1d5d41520> (NameError)
