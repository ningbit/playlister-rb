class Artist
  attr_accessor :name, :songs
  @@artist = []

#self methods
  def self.reset_artists
    @@artist = []
  end

  def self.count
    @@artist.count
  end

  def self.all
    @@artist
  end

#instance methods

  def initialize
    @songs ||= []
    @@artist << self
  end
  def songs_count
    @songs.count
  end

  def add_song(song)
    @songs << song
    song.genre.artists << self if song.genre && !(song.genre.artists.include?(self))
  end

  def genres
    @songs.collect {|song| song.genre}
  end

end