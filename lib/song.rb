require 'pry'
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
    self.artist ? self.artist.name : nil
  end



end


#Can you only consolidate a network's information through a series
#of bi-class join tables?
