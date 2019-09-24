class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    customer_reviews.count
  end

  def restaurants
    customer_reviews.map {|review| review.restaurant.name }.uniq
  end

  def self.find_by_name(name)
    @@all.select {|customer| customer.full_name == name}.first
    
  end

  def self.find_all_by_first_name(name)
    @@all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    @@all.map {|customer| customer.full_name}
  end

 #helper method
  def customer_reviews
    Review.all.select { |review| review.customer == self}
  end
end
