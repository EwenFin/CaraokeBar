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

  def favourite_song_in_room
     song_titles = @song_array.map {|song| song.title}
     guest_fav_songs = @guest_array.map{|guest| guest.fav_song}
     intersection = song_titles & guest_fav_songs
     num = intersection.length
      if num == 1
        return "Woohoo, they have my favourite song"
      elsif num > 1 && num < 6
        return "Woohoo, they have lots of our favourite songs"
      elsif num == 6
        return "Amazing, they have all of our favourite songs"
      else
        return
      end
      #I don't like this, may come back and try to add in a .select == guest.fav_song and change the reponses to include guest.names 
  end
end
