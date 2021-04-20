str = "A plain old string"
def str.shout
  self.upcase + "!!!"
end
p str.shout
p str.methods.include?(:shout) # => true
p str.singleton_methods
