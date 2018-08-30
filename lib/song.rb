class Song

  @@all = []

  attr_reader :name
  attr_accessor :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    @artist ? @artist.name : nil
  end
end
