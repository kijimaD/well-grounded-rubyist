class C
  def talk
    "Hi!"
  end
end

c = C.new
c.talk                          # => "Hi!"

obj = Object.new
def obj.talk
  "Hi!"
end
obj.talk                        # => "Hi!"

class Car
  def self.makes
    %w{ Honda Ford Toyota Chevrolet Volvo }
  end
end
