class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = []

  attr_accessor :song, :artist, :genre, :name

  def initialize(name, artist, genre)
    @name = name
    @song = song
    @@count += 1
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    # if @@genre_count["#{genre}"]
    #   @@genre_count["#{genre}"] += 1
    # else
    #   @@genre_count["#{genre}"] = 1
    # end
  end

  def self.count
    return @@count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genres
    return @@genres.uniq
  end

  def self.genre_count
    genre_count_hash = {}
    @@genres.each do |genre|
      if genre_count_hash["#{genre}"]
        genre_count_hash["#{genre}"] += 1
      else
        genre_count_hash["#{genre}"] = 1
      end
    end
    genre_count_hash
  end

  def self.artist_count
    artists_count_hash = {}
    @@artists.each do |artist|
      if artists_count_hash["#{artist}"]
        artists_count_hash["#{artist}"] += 1
      else
        artists_count_hash["#{artist}"] = 1
      end
    end
    artists_count_hash
  end

end
