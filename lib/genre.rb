class Genre
    attr_accessor :name

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

    def self.create(created_genre)
        Genre.new(name)
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        Song.all.map {|song| song.artist}.uniq
    end

end