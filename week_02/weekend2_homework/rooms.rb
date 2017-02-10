class Room
  attr_accessor :guest_array, :song_array
  attr_reader :number
  def initialize(number, guest_array)
    @number = number
    @song_array = []
    @guest_array = []
  end

  def add_guest_to_room(guest)
    @guest_array << guest
  end

  def add_song_to_room(song)
    @song_array << song
  end
end