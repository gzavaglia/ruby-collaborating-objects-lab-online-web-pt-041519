require_relative "../lib/artist.rb"
require_relative "../lib/mp3_importer.rb"

class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
<<<<<<< HEAD
    
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
=======
    @artist = artist
  end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
  def self.new_by_filename(filename)
    # song = self.new
    title = filename.split(" - ")[1]
    song = self.new(title)
    art = filename.split(" - ")[0]
    # @artist = art
    Song.artist(art)
    return song 
>>>>>>> fdcc2385dd60d1738e41032a79ae2e7195116d34
  end
end #end Class