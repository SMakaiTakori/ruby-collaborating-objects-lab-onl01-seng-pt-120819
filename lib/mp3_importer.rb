class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end  

  def files
     Dir.entries(@path).grep(/.mp3/)
  end  


end  