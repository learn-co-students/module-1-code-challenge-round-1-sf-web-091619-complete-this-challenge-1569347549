class Review
    
    attr_reader :customer, :restaurant
    attr_accessor :content, :rating 

    @@all = []

    def initialize (customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @content = content
        @rating = rating
        @@all << self
    end

    def rating=(rating)
        @rating = rating.clamp(1,5)
    end

    def self.all
        @@all
    end

end

