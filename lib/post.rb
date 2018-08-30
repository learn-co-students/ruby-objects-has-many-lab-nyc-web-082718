require "pry"

class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title, author = nil)
    @title = title
    @@all << self
    @author = author
  end

  def author_name
    if @author
      @author.name
    else
      @author
    end
  end

end
