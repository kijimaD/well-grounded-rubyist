module M
  class C
    X = 2
    class D
      module N
        X = 1
      end
    end
  end
end

puts M::C::D::N::X
puts M::C::X

# resemblance to searching a file system for a file in a particular direcotry.
