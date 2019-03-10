require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')
require_relative('../rooms.rb')
require_relative('../songs.rb')

class TestSong < Minitest::Test
  def setup
    @room1 = Room.new("Rock-Room", 5, 10)
    @room2 = Room.new("Rap-Room", 7, 15)
    @room3 = Room.new("Pop-Room", 9, 20)

    @guest1 = Guest.new("John", 21, 20)
    @guest2 = Guest.new("Vicky", 29, 50)
    @guest3 = Guest.new("Ben", 21, 30)

    @song1 = Song.new("Queen", "Don't stop me now", "Rock")
    @song2 = Song.new("Dr Dre", "Still DRE", "Rap")
    @song3 = Song.new("Katy Perry", "I kissed a girl", "Pop")
    @song4 = Song.new("Blink 182", "Dammit", "Punk")

    @playlist = [
      @song1 = {
        name: @song1.artist,
        song: @song1.song_title,
        genre: @song1.genre
      },
      @song2 = {
        name: @song2.artist,
        song: @song2.song_title,
        genre: @song2.genre
      },
      @song3 = {
        name: @song3.artist,
        song: @song3.song_title,
        genre: @song3.genre
      },
      @song4 = {
        name: @song4.artist,
        song: @song4.song_title,
        genre: @song4.genre
       }
     ]

  end

  def test_song_has_artist
    assert_equal("Queen", @song1[:name])
  end

  def test_song_has_song_title()
    assert_equal("Still DRE", @song2[:song])
  end

  def test_song_has_genre()
    assert_equal("Rock", @song1[:genre])
  end

  def test_playlist_exists()
    assert_equal(4, @playlist.count)
  end




end
