class C
  a = 5
  module M
    a = 4
    module N
      a = 3
      class D
        a = 2
        def show_a
          a = 1
          puts a
        end
        puts a
      end
      puts a
    end
    puts a
  end
  puts a
end
d = C::M::N::D.new
d.show_a

# =>
# 2
# 3
# 4
# 5
# 1

# class- and module-definition blocks gets executed when it's first encountered, whereas methods aren't executed until an object is sent the appropriate message.
