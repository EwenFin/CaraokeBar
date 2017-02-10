class Room
  attr_accessor :guest_array, :song_array
  attr_reader :number
  def initialize(number, guest_array, song_array)
     @number = number
     @guest_array = []
     @song_array = []
   
  end

  def add_guest_to_room(guest)
    if @guest_array.size < 6
    @guest_array << guest
    else 
      return "Room is full"
    end
    
  end

  def add_song_to_room(song)
    @song_array << song
  end

  def remove_guest(guest)
    @guest_array.delete(guest)
  end

end
