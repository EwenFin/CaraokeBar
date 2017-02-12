class Guest
  attr_accessor :name ,:fav_song, :wallet, :fav_drink
  def initialize(name, fav_song, wallet, fav_drink, drunkness)
    @name = name
    @fav_song = fav_song
    @wallet = wallet
    @fav_drink = fav_drink
    @drunkness = drunkness
  end

end