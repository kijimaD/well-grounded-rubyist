str = "Another plain old string."

module StringExtras
  def shout
    self.upcase + "!!!"
  end
end

class String
  include StringExtras
end

p str.methods.include?(:shout) # => true
