class Song
  @@count=0
  @@artists=Array.new
  @@genres=Array.new

  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@artists.push(artist)
    @@genres.push(genre)
  end

  attr_reader :name, :genre, :artist

  def self.count
    @@count
  end

  def self.artist_count
    h={}
    @@artists.each do |ar|
      if h[ar]==nil
        h[ar]=1
      else
        h[ar]+=1
      end
    end
    return h
  end

  def self.genre_count
    h={}
    @@genres.each do |gen|
      if h[gen]==nil
        h[gen]=1
      else
        h[gen]+=1
      end
    end
    return h
  end


  def self.artists
    h=artist_count
    arr=Array.new
    h.each do |key,value|
      arr<<key
    end
    return arr
  end
  def self.genres
    h=genre_count
    arr=Array.new
    h.each do |key,value|
      arr<<key
    end
    return arr
  end
end