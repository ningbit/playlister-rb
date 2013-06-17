class Song
  attr_accessor :genre

  def genre=(genre)
    @genre = genre
    genre.songs << self if genre.songs
  end
end