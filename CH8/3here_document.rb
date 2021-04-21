text = <<EOM
This is the first line of text.
This is the second line.
Now we're done.
EOM
puts text

p "================"
text = <<-EOM
The EOM doesn't have to be flush left!
EOM
puts text

p "================"
a = <<EOM.to_i * 10
5
EOM
puts a

p "================"
array = [1, 2, 3, <<EOM, 4]
This is the here-doc!
It becomes array[3].
EOM
p array

# do_something(a, b, <<EOM)
# http://some_very_long...aaaaaaaa...line
# EOM
