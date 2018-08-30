require 'pry'

class Artist

  attr_accessor :name, :songs

  @@artists = []

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def self.song_count
    @@artists.inject(0) do |sum, artist|
      sum + artist.songs.length
    end
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song_title)
    song = Song.new(song_title)
    add_song(song)
  end
end
