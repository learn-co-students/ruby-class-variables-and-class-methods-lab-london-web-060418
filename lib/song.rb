require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@all_songs = []
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all_songs << @name
    @@artists << @artist
    @@genres << @genre
    @@count += 1
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
    @@genres.uniq.map { |a_genre| [a_genre, @@genres.count(a_genre)] }.to_h
  end

  def self.artist_count
    @@artists.uniq.map { |an_artist| [an_artist, @@artists.count(an_artist)] }.to_h
  end

end
