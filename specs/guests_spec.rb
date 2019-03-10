require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')
require_relative('../rooms.rb')
require_relative('../songs.rb')

class TestGuest < Minitest::Test

  def setup
    @room1 = Room.new("Rock-Room", 5, 10)
    @room2 = Room.new("Rap-Room", 7, 15)
    @room3 = Room.new("Pop-Room", 9, 20)

    @guest1 = Guest.new("John", 21, 20)
    @guest2 = Guest.new("Vicky", 29, 50)
    @guest3 = Guest.new("Ben", 21, 30)

    @song1 = Song.new("Queen", "Don't stop me now", "Rock")
    @song3 = Song.new("Dr Dre", "Still DRE", "Rap")
    @song5 = Song.new("Katy Perry", "I kissed a girl", "Pop")
  end

  def test_guest_has_name
    assert_equal("John", @guest1.name)
  end

  def test_guest_has_age
    assert_equal(29, @guest2.age)
  end

  def test_guest_has_money
    assert_equal(30, @guest3.money)
  end

  def test_guest_pays_fee
    @guest2.guest_pays_fee(@room1)
    assert_equal(40, @guest2.guest_has_money)
  end

end
