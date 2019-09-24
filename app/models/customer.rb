class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def reviews
    Review.all.select {|rev| rev.customer == self}
  end

  def num_reviews
    reviews.count
  end

  def restaurants
    reviews.map {|rev| rev.restaurant}.uniq
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    @@all.find {|cust| cust.full_name == name}
  end

  def self.find_all_by_first_name(name)
    @@all.select {|cust| cust.first_name == name}
  end

  def self.all_names
    @@all.map {|cust| cust.full_name}
  end
end

# #### Customer
# - `Customer.all`
#   - should return **all** of the customer instances

# - `Customer#add_review(restaurant, content, rating)`
#   - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed
  # `Customer.find_by_name(name)`
  # - given a string of a **full name**, returns the **first customer** whose full name matches
# - `Customer.find_all_by_first_name(name)`
#   - given a string of a first name, returns an **array** containing all customers with that first name
# - `Customer.all_names`
#   - should return an **array** of all of the customer full names