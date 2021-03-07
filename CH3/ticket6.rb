class Ticket
  attr_reader :venue, :date
  # attr :venue, :date
  attr_accessor :price # reader + writer
  # attr :price, true

  def initialize(venue, date)
    @venue = venue
    @date = date
  end
end
