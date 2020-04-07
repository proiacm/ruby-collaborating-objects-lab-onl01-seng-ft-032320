class Mp3Importer 
  attr_accessor :path 
  
  def initialize
    @path = path
  end
  
  def files 
    music_array = []
    
      Dir.new(self.path).each do |file| music_array << file if file.length > 4
    end
  music_array
  end
  
  def import(list_of_filenames)
    list_of_filenames.each {|some_filename| Song.new_by_filename(some_filename)}
  end
end 