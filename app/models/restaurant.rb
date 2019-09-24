class Restaurant
    attr_reader :name

    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def customers
      Customer.all.map do |customers|
      customers.num_reviews
      end.uniq
    end

    def reviews
      @@all.map do |resturant|
      resturant.customers
      end
    end

    def average_star_rating
        @@all.map do |review|
        review.reviews.average.to_i
        end
    end

    def self.all
      @@all
    end


    def self.find_by_name(name)
      @@all.map do |restaurants|
      restaurants.find == name
      end
    end


end
