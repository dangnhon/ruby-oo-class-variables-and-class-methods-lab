require 'pry'

class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = [] 
    @@genres = [] 
    @@all = [] 

    def initialize(name, artist, genre)
        @name = name
        @artist = artist 
        @genre = genre 
        @@count += 1
        @@artists << artist 
        @@genres << genre 
        @@all << self

    end 

    def self.all
        @@all
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
        genre_hash = {} 
        self.genres.each do |unique| 
            genre_count = @@genres.select{|element| element == unique}.length 
            genre_hash[unique] = genre_count 
        end 
        genre_hash
    end

    def self.artist_count 
        artist_hash = {}
        self.artists.each do |unique_artist| 
            artist_count = @@artists.select{|element| element == unique_artist}.length
            artist_hash[unique_artist] = artist_count
        end 
        artist_hash
    end 

   


end 
