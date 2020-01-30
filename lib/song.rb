class Song
  
  attr_accessor :name, :artist
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end  

  def self.all
    @@all 
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end  
  
  
  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song = self.new(song)
    song.artist_name = Artist.new(artist_name)
    song
  end
  
  
end  