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
  
  def self.new_by_filename(file)
    song = file.split(" - ")[1]
    artist_name = file.split(" - ")[0]
    song = self.new(song)
    song.artist = Artist.new(artist_name)
    song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    # artist.add_song(self)
  end  
end  