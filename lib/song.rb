class Song

  attr_accessor :name,:artist, :genre
  @@artists=[]
  @@count=0
 @@genres=[]
  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count += 1
    @@genres<< genre
    @@artists<<artist
  end


  def self.count
    @@count
  end
   #W0uLd AtTrIbUtE rEaDer macro have worked here?


   def self.genres()
     @@genres.uniq
   end

   def self.artists
     @@artists.uniq
   end

   def self.genre_count

    @@genres.uniq.map { |curly_boi| [curly_boi, @@genres.count(curly_boi)]}.to_h

   end

   def self.artist_count

    @@artists.uniq.map { |curly_boi| [curly_boi, @@artists.count(curly_boi)]}.to_h

   end

end
