class Banner
  def initialize(text)
    @text = text
  end

  def to_s
    @text
  end

  def +@
    @text.upcase
  end

  def -@
    @text.downcase
  end
end

banner = Banner.new("Eat at David's!")
puts banner # Eat at David's!
puts +banner
puts -banner

# ================
# Remove to_s
class Banner2
  def initialize(text)
    @text = text
  end

  def +@
    @text.upcase
  end

  def -@
    @text.downcase
  end
end

banner = Banner2.new("Eat at David's!")
puts banner # #<Banner2:0x00005576c98cc018>
