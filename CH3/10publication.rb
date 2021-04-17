class Publication
  attr_accessor :publisher
end

class Magazine < Publication
  attr_accessor :editor
end

mag = Magazine.new
mag.publisher = "David"
mag.editor = "Joe"

puts "Mag is published by #{mag.publisher}, and edited by #{mag.editor}."
