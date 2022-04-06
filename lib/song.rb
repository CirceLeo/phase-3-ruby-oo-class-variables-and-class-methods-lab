class Song
    attr_accessor :name, :artist, :genre
    #attr_reader 
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize name, artist, genre
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.tally
        # @@all_genres.map |genre| do 
        #     if count_hash.contains???? do
        #         count_hash[genre] += 1
        #     end
        # end
    end
    def self.artist_count
        @@artists.tally
    end

end