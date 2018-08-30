require 'pry'

require_relative 'artist'


class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist == nil
      return nil
    elsif self.artist.name
      self.artist.name
    end
  end


end
