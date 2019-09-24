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

  def reviews
    Review.all.select {|review| }
  end

  def customers
    reviews.map {|review| review.customer.first_name}.uniq
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def average_start_rating
    arr_ratings = reviews.map {|review| review.rating}
    arr_ratings.inject { |sum, el| sum + el}.to_f/arr_ratings.size
  end

  def longest_review
    reviews.max_by {|review| review.content}
  end

  def self.find_by_name(name)
    @@all.select {|restaurant| restaurant.name == name}.first
  end

end
