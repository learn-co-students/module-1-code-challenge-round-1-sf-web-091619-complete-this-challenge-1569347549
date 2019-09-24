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

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def helper
    Review.all.select { |info| info.customer == self}
  end

  def num_reviews
    Review.all.select { |info| info.customer == self}.count
  end

  def restaurants
    helper.map { |info| info.restaurant.name}.uniq
  end
  


  def self.find_by_name(name)
    first = nil
    last = nil
    first = name.split[0]
    last = name.split[1]
    @@all.select { |info| info.first_name == first && info.last_name == last}
  end

  def self.find_all_by_first_name(name)
    @@all.select { |info| info.first_name == name}
  end

  def self.all_names
    @@all.map { |info| info.full_name}
  end

  def self.all
    @@all
  end
end