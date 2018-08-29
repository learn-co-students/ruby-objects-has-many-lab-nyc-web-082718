class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@all << song
  end

  def add_song_by_name(name)
    add_song(Song.new(name))
  end

  def self.song_count
    @@all.length
  end
end
