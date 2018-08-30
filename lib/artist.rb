require 'pry'

require_relative 'song'


class Artist
  attr_accessor :name , :songs

  @@all_songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@all_songs << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@all_songs << song
    song.artist = self
  end

  def self.song_count
    #binding.pry
    @@all_songs.length
    #combine ALLL the @songs arrays into a new meta-array and count its length
  end

end
