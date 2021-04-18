# [1, 2, 3] -> array
# 1, 2, 3 -> list

# The array is constructed from the list, thanks to the brackets.

array = [1, 2, 3, 4, 5]
p array
p *array
p [*array]
p [array]
# The star has a kind of bracket-removing or unarraying effect.

def combine_names(first_name, last_name)
  first_name + " " + last_name
end
names = ["David", "Black"]
puts combine_names(*names)
