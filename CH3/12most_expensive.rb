class Ticket
  attr_writer :price
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

  def price
    @price
  end
end

# Ticket = Class.new
def Ticket.most_expensive(*tickets)
  tickets.max_by(&:price)
end

th = Ticket.new("Town Hall", "11/12/13")
cc = Ticket.new("Convention Center", "12/13/14")
fg = Ticket.new("Fairgrounds", "13/14/15")
th.price = 12.55
cc.price = 10.00
fg.price = 18.00

highest = Ticket.most_expensive(th, cc, fg)
puts "The highest-priced ticket is the one for #{highest.venue}."

# クラスメソッドは、クラスであるオブジェクトにメッセージを送る。(クラスのインスタンスにメッセージを送れば、インスタンスメソッド)

# Ticket.most_expensive ... Ticketのシングルトンメソッド。これはClassのインスタンスメソッドと区別がつかない。
# Classクラスは2種類のnewを持っていると考えられる。クラスメソッドとインスタンスメソッド。つまりClass.newと、Ticket.new。インスタンス化するとnewがオーバーライドされるため、意識せず使えている。


# 1.Classオブジェクトがダイレクトに受け取ることができるのがクラスメソッド
# 2.Classオブジェクトでダイレクトに定義されているのがクラスメソッド(呼ばれるだけでなく)


# チケットのクラスメソッドとしてmost_expensiveを割り当てることでクラスによって表される抽象的な冠詞レベルにメソッドを割り当てられる。チケットファミリにメソッドを保持できる、ようなイメージ。
