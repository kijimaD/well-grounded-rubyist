# enumerableは状態を持つ。
names = %w{ David Yukihiro}
e = names.to_enum
puts e.next # David
puts e.next # Yukihiro
e.rewind
puts e.next # David

# enumerator はオブジェクト。どこまで進んだか保存してる。
# iterator はメソッド。状態をもたない。

module Music
  class Scale
    NOTES = %w{c c# d d# e f f# g a a# b}

    def play
      NOTES.each { |note| yield note }
    end
  end
end

scale = Music::Scale.new
scale.play { |note| puts "Next note is #{note}" }

# p321

scale.map { |note| note.upcase }

enum = scale.enum_for(:play)
p enum.map { |note| note.upcase }
p enum.select { |note| note.include?('f') }
