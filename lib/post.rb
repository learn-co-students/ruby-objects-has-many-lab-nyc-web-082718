require 'pry'

require_relative 'author'

class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if self.author == nil
      return nil
    elsif self.author.name
      self.author.name
    end
  end


end
