require "pry"
require_relative './artist'

class Song

  attr_accessor :name, :artist
  @@all = []


  def initialize(name, artist = nil)
    @name = name
    @@all << self
    @artist = artist
  end


  def artist_name
    if @artist
      @artist.name
    else
      @artist
    end
  end
end
