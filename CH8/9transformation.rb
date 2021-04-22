string = "David A.Black"
p string.upcase
p string.downcase
p string.swapcase
p string.capitalize

p "================"
p string.rjust(25)
p string.ljust(25)
p string.rjust(25, '.')
p string.rjust(25, '<>')
p "The middle".center(20, "*")

p "================"
p string = "      David A. Black    "
p string.strip
p string.lstrip
p string.rstrip

p "================"
p "David A. Black".chop
p "David A. Black".chomp
p "David A. Black".chomp('ck')

p "================"
# String#clear change its receiver but doesn't end with the ! character.
p string
p string.clear
p string

p "================"
string = "(to be named later)"
p string.replace("David A. Black")

p "================"
p "David A. Black".delete("abc")
p "David A. Black".delete("^abc")
p "David A. Black".delete("a-e", "^c")
# Dvi A. Blck
p "David A. Black".delete("a-e", "^a")
# Davi A. Blak"

p "================"
p "David A. Black".crypt("34")
p "David A. Black".crypt("35")

p "================"
p "a".succ
p "abc".succ
p "azz".succ
