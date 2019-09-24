class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def helper
    Review.all.select { |info| info.restaurant == self}
  end

  def customers
    helper.map { |info| info.customer.full_name }.uniq
  end

  def reviews
    Review.all.select { |info| info.restaurant == self}
  end

  def average_star_rating
    total = 0
    helper.select { |info| 
      total += info.rating
    }
    count = helper.size
    total = total / count
    total
  end

  def longest_review
    # NOT WORKING!!!

    
    # new = helper.map{ |info| info.text }
    # return new.size.max
  end



  def self.find_by_name(name)
    @@all.select { |info| info.name == name }
  end

  def self.all
    @@all
  end
end
