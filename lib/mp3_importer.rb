require_relative "../lib/artist.rb"
require_relative "../lib/song.rb"
<<<<<<< HEAD
require 'pry'

class MP3Importer
  attr_accessor :path
  def initialize(file)
    @path = file
  end 
  
  def files
    files = []
    Dir.new(self.path).each do |file|
      if file.length > 4
        files << file 
      end
    end
    files
  end
  
  def import
    self.files.each do |filename| 
      Song.new_by_filename(filename) 
    end
  end
=======

class MP3Importer
  
>>>>>>> fdcc2385dd60d1738e41032a79ae2e7195116d34
end