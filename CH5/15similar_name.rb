class Violin
  class String
    attr_accessor :pitch
    def initialize(pitch)
      @pitch = pitch
    end
  end
  def initialize
    @e = String.new("E")
    @a = String.new("A")
  end

  def history
    ::String.new(maker + ", " + date)
    # Ruby's built-in String class.
  end
end

# the :: in front of a constant means "start the search for this at the top level."
