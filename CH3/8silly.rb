class Silly
  def price=(x)
    puts "Current time #{Time.now}"
  end
end

s = Silly.new
s.price = 111.22
