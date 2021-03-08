Magazine = Class.new
Publication = Class.new
pub = Publication.new
mag = Magazine.new

p mag.is_a?(Magazine)
p mag.is_a?(Publication)

mag = Magazine.new
def mag.wings
  puts "Look! I can fly!"
end
mag.wings
