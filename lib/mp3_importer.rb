require "pry"

class MP3Importer

# The MP3 Importer will parse all the filenames in the db/mp3s folder
# and send the filenames to the Song class

  attr_reader :path

  def initialize(path)
    @path = path
  end

  # def files
  #   puts @@files #to see what i'm getting
  #   @@files
  # end #end

####found the below on github cuz couldn't figure it out:::
  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect do |filename|
      filename.gsub("#{path}/", "")
    end #end loop
  end #end method
  ###not quite sure how it works


  def import
    files.each{|filename| Song.new_by_filename(filename) } #Song.new_by_filename(filename) is calling the method in class Song
  end

end
