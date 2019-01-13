require 'pry'
class Artist


  attr_accessor :genre
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |songs|
      songs.artist == self
      #binding.pry
      end
    end

    def genres
      self.songs.map do |song_instance|
        song_instance.genre
      end
    end




end # end of artist class
