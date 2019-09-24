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

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def rev
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    rev.count
  end

  def restaurant
    rev.map do |review|
      review.restaurant
    end.uniq
  end

  def self.find_by_name(name)
    @@all.find do |c|
      c.full_name == name
    end
  end

  def self.all_names
    @@all.map do |c|
      c.full_name
    end
  end

  def self.find_all_by_first_name(name)
    @@all.map do |c|
      c.full_name.include?(name)
    end
    
  end


end
