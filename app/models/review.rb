class Review

    attr_reader :customer, :restaurant
    attr_accessor :rating, :content

    @@all = []
    
    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @content = content
        @@all << self
        if rating.between?(1,5)
            @rating = rating
        else
            p "Please rate 1-5."
        end
    end

    def self.all
        @@all
    end

end

