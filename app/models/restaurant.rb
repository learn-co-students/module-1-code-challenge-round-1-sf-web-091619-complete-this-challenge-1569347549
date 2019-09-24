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

  #helper method
  def reviews_rest
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews_rest.map {|review| review.customer}.uniq
  end

  def reviews
    reviews_rest
  end

  def average_star_rating
    rating = reviews_rest.map {|review| review.rating}
    rating.inject(&:+) / rating.size.to_f
  end

  def longest_review
    content = reviews_rest.map {|review| review.content}
    content.max_by {|review| review.length}
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end


end
