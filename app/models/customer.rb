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
    Review.new(self,restaurant,content,rating)
  end

  #help method
  def total_reviews
    Review.all.select do |reviews|
      reviews.customer == self
    end
  end

  def num_reviews
    total_reviews.size
  end

  def restaurants 
    @@all.map do |reviews|

    end
  end


  def self.find_by_name(full_name)
    @@all.find do |el|
      el.full_name == full_name
    end
  end

  def self.find_all_by_first_name(name)
    @@all.find do |el|
      el.full_name == name
    end 
  end

  def self.all_names
    @@all.map do |el|
      el.full_name
    end
  end

end
