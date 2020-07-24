require 'pry'

class Author

  @@all = []

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
    @posts << post
  end

  def self.all
    @@all
  end

  def self.post_count
    counter = 0
    @@all.each do |author|
      counter += author.posts.length
    end
    counter
  end

end
