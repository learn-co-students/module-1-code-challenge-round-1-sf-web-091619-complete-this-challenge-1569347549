class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews #returns array of all reviews for this rest.inst
    Review.all.select { |review| review.restaurant == self }
  end

  def customers 
    reviews.map { |customer| customer.customer }.uniq
  end

  def average_star_rating
    reviews.sum { |review| review.rating } / reviews.count
  end

  def longest_review
    reviews.max_by { |review| review.content.length }
  end

  #As a restaurants wouldn't have more than one instance of the same name, getting first restaurant 
  #through Review.all seemed like the best route since there could be many instances of the same restaurant with all the reviews
  def self.find_by_name(restaurant_name)
    restaurant_inst = Review.all.find { |review| review.restaurant.name == restaurant_name }
    restaurant_inst.restaurant
  end

  ##and the method below is just if I was to go through Restaurant.all for the first restaurant_instance
  # def self.find_by_name(restaurant_name) 
  #   self.all.find { |restaurant| restaurant.name == restaurant_name }
  # end

end
