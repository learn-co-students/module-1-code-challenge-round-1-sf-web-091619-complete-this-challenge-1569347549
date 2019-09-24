class Review
    attr_reader :restaurant,:content
    attr_accessor :customer, :rating
    @@all = []
    def initialize(customer,restaurant,content,rating)
        @customer = customer
        @restaurant = restaurant
        @content = content
        @rating = rating.to_i
        @@all << self
    end

    def self.all
        @@all
    end


end

