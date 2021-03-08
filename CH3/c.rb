class C
end

class D < C
end

puts D.superclass
puts D.superclass.superclass

# p BasicObject.new # Undefined #inspect error!
p BasicObject.instance_methods.count # 8
p Object.instance_methods.count # 58
