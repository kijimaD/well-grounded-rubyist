class C
  def self.singleton_method_added(m)
    puts "Method #{m} was just defined."
  end
end

## Method singleton_method_added was just defined.

class D
  def self.singleton_method_added(m)
    puts "Method #{m} was just defined."
  end
  def self.new_class_method
  end
end

## Method singleton_method_added was just defined.
## Method new_class_method was just defined.

# Triggers the callback's own execution.
