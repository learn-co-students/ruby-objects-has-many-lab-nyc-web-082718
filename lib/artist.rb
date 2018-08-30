require "pry"
require_relative './song'

class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    @songs << Song.new(song_name, self)
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
end

# binding.pry
# hello = Song.new("Hello")
# adele.add_song(hello)
# drake = Artist.new("Drake")
# song.artist = drake
