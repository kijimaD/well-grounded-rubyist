module InterestBearing
  def calculate_interest
    puts "Placeholder! We're in module InterestBearing."
  end
end

class BankAccount
  include InterestBearing

  def calculate_interest
    puts "Placeholder!"
    puts "And"
    puts "which"
  end
end

account = BankAccount.new
account.calculate_interest # Win BankAccount instance method

# メソッドを探索する順番: インスタンスメソッド → モジュールメソッド

# ================

module M
  def report
    puts "module M"
  end
end

module N
  def report
    puts "module N"
  end
end

class C
  include M
  include N
end

c = C.new
c.report # Win N ... override

# ================

class D
  include M
  include N
  include M
end

d = D.new
d.report # Win N ... re-including a module doesn't do anything.
