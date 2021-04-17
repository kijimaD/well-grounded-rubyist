class TravelAgentSession
  def year=(y)
    @year = y.to_i
    if @year < 100
      @year = @year + 2000
    end
  end

  def year
    @year
  end
end

tas = TravelAgentSession.new
tas.year = 2000
p tas.year

tas.year = 0 # It's method call. 割り当てのように見えるが、内部的はメソッド呼び出し。返り値も割り当てのように見える
p tas.year # 2000
