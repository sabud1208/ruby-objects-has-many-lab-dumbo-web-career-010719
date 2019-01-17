require "pry"

class Artist 
attr_accessor :name, :songs

     
    def initialize(name)
      @songs = []
      @name = name
    end 
    
    
    def add_song(song)
      @songs << song
      song.artist = self
    end
    
    def add_song_by_name(song_name)
      new_song = Song.new(song_name)
      new_song.artist = self
      @songs << new_song
    end
    
    def self.song_count
        Song.all.select do |it| 
          it.artist
        end.count
    end

end