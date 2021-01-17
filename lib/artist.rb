require 'pry'
class Artist

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)  
          
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
        all_genres = []
        songs.map do |song|
            all_genres << song.genre
        end
        all_genres
    end
end