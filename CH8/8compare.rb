p "a" <=> "b" # -1
p "b" <=> "a" # 1
p "a" <=> "a" # 0
p "b" > "a"
p "a" > "A"
p "." > ","

p "string" == "string"
p "string" == "house"
# two literal "string" object are diffrent objects, but they have the same content.

p "a" == "a" # true
p "a".equal?("a") # false
p "a".equal?(100) # false
