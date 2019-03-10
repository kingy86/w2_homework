class Room

attr_reader :name,:capacity, :fee

  def initialize(name,capacity, fee)
    @name = name
    @capacity = capacity
    @guests = []
    @songs = []
    @fee = fee
  end

  def guest_count()
    return @guests.length
  end

  def song_count()
    return @songs.length
  end

  def guest_enters_room(guest)
    @guests << guest
  end

  def guest_leaves_room(guest)
    @guests.pop
  end

  def song_added_to_room(song)
    @songs << song
  end




end
