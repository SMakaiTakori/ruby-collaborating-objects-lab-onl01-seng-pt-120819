class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end  

  def files
    Dir.entries(@path).grep(/.mp3/)
     
    # @files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
  end  


end  