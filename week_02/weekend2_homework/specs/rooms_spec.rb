require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')
require_relative('../guests.rb')
require_relative('../songs.rb')

class TestRooms < MiniTest::Test
  def setup
    @guest1 = Guest.new("John", "Waterloo", 100)
    @guest2 = Guest.new("Claire", "Bohemian Rhapsody", 50)
    @guest3 = Guest.new("Mike", "under pressure", 50)
    @guest4 = Guest.new("Bruce", "Fishermans Blues", 50)
    @guest5 = Guest.new("Fiona", "walk this way ", 50)
    @guest6 = Guest.new("Andy", "Blue in Green", 50)
    @guest7 = Guest.new("Gayle", "Settling", 50)
    @song1 = Song.new("Waterloo")
    @song2 = Song.new("Song 2")
    @song3 = Song.new("Bohemian Rhapsody")
    @room1 = Room.new(1, [], [])
    
  end

  def test_room_has_number
    assert_equal(1, @room1.number)
  end

  def test_adding_guests
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    assert_equal([@guest1, @guest2], @room1.guest_array)
  end

  def test_adding_songs
    @room1.add_song_to_room(@song1)
    @room1.add_song_to_room(@song2)
    assert_equal([@song1, @song2], @room1.song_array)
  end

  def test_removing_guests
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    assert_equal([@guest1, @guest2], @room1.guest_array)
    @room1.remove_guest(@guest1)
    assert_equal([@guest2], @room1.guest_array)
  end

  def test_room_is_full
      # @room2 = Room.new(2, [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6] , [@song1, @song2])

      #originally I created a new instance of a room with 6 guests already inside, but then ran into problem with @guest_array = [].  I discussed this with Sian who told me two ways around the problem, this is the longer, but probably better, way around.

      @room1.add_guest_to_room(@guest1)
      @room1.add_guest_to_room(@guest2)
      @room1.add_guest_to_room(@guest3)
      @room1.add_guest_to_room(@guest4)
      @room1.add_guest_to_room(@guest5)
      @room1.add_guest_to_room(@guest6)

      assert_equal("Room is full", @room1.add_guest_to_room(@guest7))
  end


  def test_guest_favourite_song_in_room
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    @room1.add_song_to_room(@song1)
    @room1.add_song_to_room(@song2)
    assert_equal([@guest1, @guest2], @room1.guest_array)
    assert_equal([@song1, @song2], @room1.song_array)
    #started getting unexpected empty arrays returned in the testing here, so I'm testing everything
    assert_equal("Woohoo, they have my favourite song", @room1.favourite_song_in_room)
    @room1.add_song_to_room(@song3)
    assert_equal("Woohoo, they have lots of our favourite songs", @room1.favourite_song_in_room)

    
  end 
end