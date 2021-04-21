# operation changes the receiver.
p "a" + "b"
p "a" + "b" + "b"

# unchaged
p str = "Hi "
p str + "there."
p str # unchanged

# change
p str = "Hi "
p str << "there."
p str
