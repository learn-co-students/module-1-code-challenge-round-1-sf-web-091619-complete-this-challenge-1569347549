class Review
    attr_reader :customer, :restaurant
    attr_accessor :rating, :content
    @@all = []

  def initialize(customer,restaurant,rating,content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
    if (1..5).include?(rating)
        @rating = rating
    else 
    end
  end

  def self.all
    @@all
  end

end

