require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')
require_relative('../rooms')
require_relative('../songs')

class TestRoom < Minitest::Test

  def setup
    @room1 = Room.new("Rock-Room", 2, 10)
    @room2 = Room.new("Rap-Room", 2, 15)
    @room3 = Room.new("Pop-Room", 2, 20)

    @guest1 = Guest.new("John", 21, 20)
    @guest2 = Guest.new("Vicky", 29, 50)
    @guest3 = Guest.new("Ben", 21, 30)

    @song1 = Song.new("Queen", "Don't stop me now", "Rock")
    @song3 = Song.new("Dr Dre", "Still DRE", "Rap")
    @song5 = Song.new("Katy Perry", "I kissed a girl", "Pop")
  end

  def test_room_has_name
    assert_equal("Rock-Room", @room1.name)
  end

  def test_room_has_capacity
    assert_equal(2, @room1.capacity)
  end

  def test_room_has_fee
    assert_equal(10, @room1.fee)
  end

  def test_room_is_empty
    assert_equal(0, @room1.guest_count())
  end

  def test_room_has_no_songs
    assert_equal(0, @room1.song_count)
  end

  def test_add_guest()
    @room1.guest_enters_room(@guest1)
    assert_equal(1, @room1.guest_count)
  end

  def test_remove_guest
    @room1.guest_leaves_room(@guest1)
    assert_equal(0, @room1.guest_count)
  end

  def test_add_song()
    @room1.song_added_to_room(@song1)
    assert_equal(1, @room1.song_count)
  end
end
