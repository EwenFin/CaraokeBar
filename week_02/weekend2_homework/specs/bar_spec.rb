require('minitest/autorun')
require('minitest/rg')
require_relative('../bar.rb')

class TestBar < MiniTest::Test
  def setup
    @room1 = Room.new(1, [], [])
    

  end
end