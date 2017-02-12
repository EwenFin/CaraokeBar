class Bar
  attr_reader :stock
  def initialize(stock)
    @stock = stock
  end

  def  sell_drink(guest)
    cost = @stock[guest.fav_drink]
    guest.wallet = guest.wallet - cost 
    guest.drunkness = guest.drunkness + 1
  end
end