class Room
  attr_accessor :guest_array
  attr_reader :number
  def initialize(number, guest_array)
    @number = number
    @guest_array = []
  end

  def add_guest_to_room(guest)
    @guest_array << guest
  end

  
end