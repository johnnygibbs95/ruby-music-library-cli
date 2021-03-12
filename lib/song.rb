class Song
    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name, artist = nil, genre = nil)
        @name = name
        self.artist=(artist) if artist != nil
        self.genre=(genre) if genre != nil
        save
    end

    def self.all
        @@all
    end

    def self.destroy_all
        self.all.clear
    end

    def save
        self.class.all << self
    end

    def self.create(created_song)
        created_song = Song.new(name)
        created_song
    end

    def artist=(artist)
        @artist = artist
        artist.add_song(self)
    end

    def self.find_by_name(name)
        self.all.detect {|song| song.name == self}
    end

end