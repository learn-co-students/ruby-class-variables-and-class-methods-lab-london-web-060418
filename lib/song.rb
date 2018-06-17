
class Song

  attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    songs_in_genres = {}
    @@genres.each do |genre|
      if songs_in_genres.key?(genre)
        songs_in_genres[genre] += 1
      else
        songs_in_genres[genre] = 1
      end
    end
    songs_in_genres
  end

  def self.artist_count
    songs_by_artists = {}
    @@artists.each do |artist|
      if songs_by_artists.key?(artist)
        songs_by_artists[artist] += 1
      else
        songs_by_artists[artist] = 1
      end
    end
    songs_by_artists
  end
end
