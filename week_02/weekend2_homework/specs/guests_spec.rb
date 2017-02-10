require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')

class TestGuest < MiniTest::Test
  def setup
    @guest1 = Guest.new("Bob", "9 to 5", 25)
  end

  def test_guest_has_fav_song
    assert_equal("9 to 5", @guest1.fav_song)
  end

end