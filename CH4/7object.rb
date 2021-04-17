class BasicObject
  # seven method definitions
end

module Kernel
  # over 100 methods
end

class Object < BasicObject
  # one or two private methods
  # main point mix in
end

class C
end

p C.superclass # Object

# 階層があるが、Objectはクラスだし、Classはオブジェクトである…単純に階層ではなく、循環性がある。
