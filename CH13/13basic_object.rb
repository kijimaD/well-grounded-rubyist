# BasicObject.new.methods.sort
# -:1:in `<main>': undefined method `methods' for #<BasicObject:0x000056427eef9450> (NoMethodError)

BasicObject.instance_methods(false).sort # => [:!, :!=, :==, :__id__, :__send__, :equal?, :instance_eval, :instance_exec]
