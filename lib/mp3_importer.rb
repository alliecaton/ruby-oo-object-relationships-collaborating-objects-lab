require 'pry'
class MP3Importer

    attr_accessor :path, :song

    def initialize(path)
        @path = path
    end 

    def files
        filenames = Dir.entries(@path)
        filenames.shift(2)
        filenames
    end 

    def import
        filenames = files
        filenames.each { |filename| Song.new_by_filename(filename) }
    end 


end 
