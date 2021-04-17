class Ticket_old
  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def price=(price)
    @price = price # write
  end

  def venue
    @venue # read
  end

  def date
    @date # read
  end

  def price
    @price # read
  end
end

class Ticket_new
  attr_reader :venue, :date, :price # equal `Ticket_new.attr_reader` ... topmost level of class definition body, self is the class object itself(Ticket_new).
  attr_writer :venue
end

ticket = Ticket_new.new
p ticket.venue

ticket.venue = "a"
p ticket.venue
