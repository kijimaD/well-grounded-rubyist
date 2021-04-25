# concat
p [1, 2, 3].concat([4, 5, 6])

# +
a = [1, 2, 3]
b = a + [4, 5, 6]
p a # unchange
p b

# replace
a = [1, 2, 3]
a.replace([4, 5, 6])
p a

a = [1, 2, 3]
a = [4, 5, 6] # completely different array object than the first.

a = [1, 2, 3]
b = a
a.replace([4, 5, 6])
p a # [4, 5, 6]
p b # [4, 5, 6] two variables refer to the same array.
a = [7, 8, 9]
p b # [4, 5, 6]
