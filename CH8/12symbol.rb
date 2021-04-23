p "a".to_sym
p "Converting a string to symbol with intern".intern

# immutable
# When you want to refer to 5, you don't change the object 4 by adding 1 to it.

# 5というオブジェクトを4にすることはできない。

# ""  creates a new string. But :abc is always the same Symbol object, just as 100 is always the same object.

p "abc".object_id
p "abc".object_id

p :abc.object_id
p :abc.object_id # same

# Ruby has no Symbol#new method.

# Internally, Ruby uses symbols to keep track of all the names it's created for variables, methods, and constants.
# p Symbol.all_symbols
p Symbol.all_symbols.size
abc = 1
p Symbol.all_symbols.size
p Symbol.all_symbols.grep(/abc/)

def abc; end
p Symbol.all_symbols.size
