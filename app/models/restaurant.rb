class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|rev| rev.restaurant == self}
  end

  def customers
    reviews.map {|rev| rev.customer}.uniq
  end

  def average_star_rating
    tot = reviews.sum {|rev| rev.rating}
    avg = tot / reviews.count
    avg
  end

  def longest_review
    x = reviews.max_by {|rev| rev.content.length}
    x.content
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find {|res| res.name == name}
  end

end


# `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
# - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant
# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
# - `Restaurant#longest_review`
#   - returns the longest review content for a given restaurant
  # - `Restaurant.all`
  # - returns an array of all restaurants
  # - `Restaurant.find_by_name(name)`
  # - given a string of restaurant name, returns the first restaurant that matches