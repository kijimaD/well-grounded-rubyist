# 例)

# enumeratorのメソッドを調べる。

names = %w[aaa bbb]

e = names.to_enum
e.class

e.next
e.next
# e.next # ここでやるとエラー

e.rewind
e.next
