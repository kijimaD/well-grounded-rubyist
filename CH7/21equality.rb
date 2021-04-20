a = Object.new
b = Object.new

p a == a                        # t
p a == b                        # f
p a != b                        # t
p a.eql?(a)                     # t
p a.eql?(b)                     # f
p a.equal?(a)                   # t
p a.equal?(b)                   # f

# ================
string1 = "text"
string2 = "text"

p string1 == string2            # t
p string2.eql?(string2)         # t
