class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1   #incrementing each time a new song is created
    @@genres << genre
    @@artists << artist
  end

  def self.count
    #Song.count   #counts songs total
    @@count   #not Song.count ?
  end

  def self.artists
    @@artists.uniq   #how many unique artists
    # !!! removes duplicates here w uniq
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|  #it's an array - iterate!
      if artist_count[artist]  #it is exists
        artist_count[artist] += 1     #[Song.artists][] ||= {}
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

  def self.genres
    @@genres.uniq  #how many unique genres
    # !!! removes duplicates here w uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|   #it's an array - iterate!
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
    #[Song.genre][] ||= {}
    #check to see if the hash already contains a key of a particular genre
    #If so, increment the value of that key by one
    # OR create a new key/value pair.
  end

end

#Song.all
