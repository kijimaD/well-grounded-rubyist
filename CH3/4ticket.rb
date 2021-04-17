class Ticket
  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def price=(amount)
    @price = amount
  end

  def price
    @price
  end
end

ticket = Ticket.new("Town Hall", "11/12/13")
ticket.price=(63.00)
puts "The ticket costs $#{"%.2f" % ticket.price}"

ticket.price=(72.50)
puts "It now costs $#{"%.2f" % ticket.price}"

ticket.price = 72.50 # syntactic sugar!! Allow you to write method calls that look like assignments.
puts "It now costs $#{"%.2f" % ticket.price}"
