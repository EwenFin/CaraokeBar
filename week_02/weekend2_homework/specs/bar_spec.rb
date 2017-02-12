require('minitest/autorun')
require('minitest/rg')
require_relative('../bar.rb')
require_relative('../guests.rb')

class TestBar < MiniTest::Test
  def setup
    @bar1 = Bar.new(
      {beer: 5,
       vodka: 3,
       whisky: 4,
       wine: 5,
       water: 0}, 0)
    @guest1 = Guest.new("John", "Waterloo", 100, :whisky, 0)
  end

  def test_can_buy_drinks
    @bar1.sell_drink(@guest1)
    assert_equal(96, @guest1.wallet)
    assert_equal(4, @bar1.till)
    assert_equal(1, @guest1.drunkness)
  end
end