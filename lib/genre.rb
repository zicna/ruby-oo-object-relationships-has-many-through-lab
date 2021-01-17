
class Genre

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        all_artists = []
        songs.map do |song|
            all_artists << song.artist
        end
        all_artists
    end
end