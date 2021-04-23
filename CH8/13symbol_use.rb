# symbol two categories: method arguments and hash keys

# attr_accessor :name
# attr_reader :age
p "abc".send(:upcase)

d_hash = { name: "David", age: 55 }
p d_hash[:age]

d_hash = { "name"=> "David", "age"=> 55 }
p d_hash["name"]

# notation ':' is only available when key is symbol
d_hash = { "name": "David", "age": 55 }
p d_hash["name"] # nil
