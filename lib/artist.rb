require 'pry'

class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @songs << song
  end

  def self.all
    @@all
  end

  def self.song_count
    counter = 0
    @@all.each do |artist|
      counter += artist.songs.length
    end
    counter
  end

end
