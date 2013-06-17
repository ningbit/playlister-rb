class Genre
  attr_accessor :name, :songs, :artists
  @@genre = []

# class methods
  def self.reset_genres
    @@genre = []
  end

  def self.all
    @@genre
  end

# instance methods

  def initialize
    @songs ||= []
    @artists ||= []
    @@genre << self
  end

  def songs
    @songs
  end

  def artists
    @artists
  end
end