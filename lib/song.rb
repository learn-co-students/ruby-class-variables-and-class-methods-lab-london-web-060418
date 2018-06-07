require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0

  @@artists = []
  @@genres = []

  @@artist_count = {}
  @@genre_count = {}

  def initialize(art_name, art_artist, art_genre)
    @name = art_name
    @artist = art_artist
    @genre = art_genre

    AddArtistsToSongData(artist)
    AddGenreToSongData(genre)
    @@count += 1
  end

  def AddArtistsToSongData(artist)
    @@artists << artist
    @@artist_count[artist] ||= 0
    @@artist_count[artist] += 1
  end

  def AddGenreToSongData(genre)
    @@genres << genre
    @@genre_count[genre] ||= 0
    @@genre_count[genre] += 1
  end

  def self.count
    return @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    return @@genre_count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.artist_count
    return @@artist_count
  end

end
