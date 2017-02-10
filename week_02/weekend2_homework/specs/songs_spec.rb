require('minitest/autorun')
require('minitest/rg')
require_relative('../songs.rb')

class TestSongs < MiniTest::Test
  def setup
    @song1 = Song.new("9 to 5")
    @song2 = Song.new("song 2")
    @song3 = Song.new("Life on Mars")
  end

  def test_song_has_name
    assert_equal("song 2", @song2.title)
  end
end