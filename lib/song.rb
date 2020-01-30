class Song
  
  attr_accessor :name, :artist
  
  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end  

  def self.all
    @@all 
  end
  
  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
  
  end  
  
  
  
end  