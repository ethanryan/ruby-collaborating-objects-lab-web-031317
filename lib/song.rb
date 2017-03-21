require "pry"

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end


###got the below method from github cuz i couldn't figure it out:
  def self.new_by_filename(file_name)
    artist, song = file_name.split(" - ")
    #song = file_name.split(" - ")
    #filename = Song.new(filename) #creates a new song with it
    #artist = filename.split(" - ")[0]
    new_song = self.new(song)
    
    #song = file_name.split(" - ")[1]
    new_song.artist_name = artist
    new_song
  end #end method

  # def self.new(filename)
  #   artist = filename.split(" - ")[0]
  #   title = filename.split(" - ")[1]
  # end #end method


end #end class
