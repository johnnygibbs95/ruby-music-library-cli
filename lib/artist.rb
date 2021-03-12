class Artist
    attr_accessor :name, :song

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def self.destroy_all
        self.all.clear
    end

    def self.create(created_artist)
        Artist.new(name)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self unless song.artist
    end

    def genres
        Song.all.map {|song| song.genre}.uniq
    end

end