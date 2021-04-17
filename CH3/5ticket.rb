class Ticket
  def price=(amount)
    if (amount * 100).to_i == amount * 100
      @price = amount
    else
      puts "The price seems to be malformed"
    end
  end

  def price
    @price
  end
end

p Ticket.new.price = 120
p Ticket.new.price = "a" # malformed
