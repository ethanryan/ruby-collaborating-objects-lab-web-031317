require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []
  #@@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    #@@song_count += 1 #add one to song_count class variable each time a song is created
  end

  def name=(name) #this is the getter method, which gets the value of the instance variable 'name'
    @name = name
  end #end method

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end #end method

  def add_song(song)
    @songs << song #add each song to the songs array, created in initialize
  end

##got this from github cuz couldn't figure it out:::
  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end #end method

  def self.find(name)
    self.all.find do |artist|
      artist.name == name
    end #end loop
  end #end method

  def self.create(name)
    self.new(name).tap do |artist|
      artist.save
    end #end loop
  end #end method

  def save
    @@all << self
  end #end method

  def print_songs
    songs.each do |song|
      puts song.name
    end #end loop
  end #end method

end #end class
