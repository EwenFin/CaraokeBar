require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')
require_relative('../guests.rb')
require_relative('../songs.rb')

class TestRooms < MiniTest::Test
  def setup
    @guest1 = Guest.new("Waterloo")
    @guest2 = Guest.new("Bohemian Rhapsody")
    @song1 = Song.new("Waterloo")
    @song2 = Song.new("Song 2")
    @room1 = Room.new(1, [])
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


end