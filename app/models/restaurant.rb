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

  def customers
    reviews.map do |review|
      review.customer
    end.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    total = reviews.select do |review|
      review.rating
    end.count
    sum = reviews.sum do |review|
      review.rating
    end
    sum / total
  end

  def self.find_by_name(name)
    @@all.find do |r|
      r.name == name
    end
  end

  def longest_review
    reviews.max_by do |rev|
      rev.content
    end
  end

end
