overrides = {}
enum_classes = ObjectSpace.each_object(Class).select do |c|
  c.ancestors.include?(Enumerable)
end

enum_classes.sort_by { |c| c.name }.each do |c|
  overrides[c] = c.instance_methods(false) &
                Enumerable.instance_methods(false)
end

overrides.delete_if { |c, methods| methods.empty? }
overrides.each do |c, methods|
  puts "Class #{c} overrides: #{methods.join(", ")}"
end

# ~> -:6:in `sort_by': comparison of NilClass with String failed (ArgumentError)
# ~> 	from -:6:in `<main>'
