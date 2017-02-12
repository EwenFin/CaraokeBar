class Bar
  attr_reader :stock, :till
  def initialize(stock, till)
    @stock = stock
    @till = till
  end

  def  sell_drink(guest)
    cost = @stock[guest.fav_drink]
    guest.wallet = guest.wallet - cost 
    @till = @till + cost
    guest.drunkness = guest.drunkness + 1
  end
end