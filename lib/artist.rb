require 'pry'

class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
 def songs
   Song.all.select {|song| song.artist == self}
 end
 def add_song(song)
   song.artist = self
 end
 def add_song_by_name(song_name)
 song_name = Song.new(song_name)
 add_song(song_name)
 end
 
 def self.song_count
   @@song_count == 0
   add_song(song)
   @@song_count +=1 
   add_song_by_name(song_name)
end