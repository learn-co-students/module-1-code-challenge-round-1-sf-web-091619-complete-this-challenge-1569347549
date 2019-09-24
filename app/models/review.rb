class Review
    attr_reader :author, :location, :text
    attr_accessor :stars
    @@all = []
    def initialize (author, location, text, stars)
        @author = author
        @location = location
        @text = text
        @stars = stars
        @@all << self
    end



    def customer
        self.author
    end

    def restaurant
        self.location
    end

    def rating
        self.stars
    end

    def content
        self.text
    end



    def self.all
        @@all
    end
end