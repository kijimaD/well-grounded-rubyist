class Ticket
  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def venue
    @venue
  end

  def date
    @date
  end
end

th = Ticket.new("Town Hall", "11/12/13")
cc = Ticket.new("Convention Center", "12/13/14")
puts "The first is #{th.venue} event on #{th.date}."
puts "The first is #{cc.venue} event on #{cc.date}."
