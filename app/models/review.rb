class Review
  attr_reader :customer, :restaurant
  attr_accessor :rating, :content
  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    if rating.between?(0, 5)
      @rating = rating
    else
      @rating = nil
    end
    @content = content
    @@all << self
  end 
  
  def self.all 
    @@all
  end

end

