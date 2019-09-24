class Review
  
    attr_accessor :rating, :content
    attr_reader :customer, :restaurant

    @@all = []

    def initialize(customer, restaurant, rating, content.to_s)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @content = content
        @@all << self
    end

    def customer
        @customer
    end

    def rating
        @rating.to_i 
    end

    def rating
        if @rating > 5
            return @rating = 5
        elsif @rating < 0
            return @rating = 1
        else 
            return @rating
        end
        puts @rating
    end

    def content
        @content
    end

    
   


    def self.all
        @@all
    end

end

