class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    
  end  

  def songs
    Song.all.select {|song| song.artist == self}
  end 

  def add_song(song)
    song.artist = self
  end  

  def self.all
    @@all
  end  

  def self.create(name)
    artist = self.new(name)
    @@all << artist
    artist
  end  
  
  def self.find(name)
    @@all.find {|artist| artist.name == name}
  end  

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end  
  
  def print_songs
    songs.each {|song| puts song.name}
  end  
  
  def save
    @@all << self  
  end  


end