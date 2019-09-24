class Review
    attr_reader :customer, :restaurant
    attr_accessor :content, :rating
    @@all = []

    def initialize(customer, restaurant, content, rating) 
        @customer = customer
        @restaurant = restaurant
        @content = content
        if rating > 0 && rating < 6
            @rating = rating
        else
            @rating = 0
        end
        @@all << self
    end

    def self.all
        @@all 
    end

end

