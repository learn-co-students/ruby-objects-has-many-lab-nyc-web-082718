class Author

  @@authors = []

  attr_reader :name
  attr_accessor :posts

  def initialize(name)
    @name = name
    @posts = []
    @@authors << self
  end

  def self.post_count
    @@authors.inject(0) do |sum, author|
      sum += author.posts.length
    end
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

end
