class Banner
  def initialize(text)
    @text = text
  end

  def !
    @text.reverse
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
puts banner
puts !banner
puts (not banner)
