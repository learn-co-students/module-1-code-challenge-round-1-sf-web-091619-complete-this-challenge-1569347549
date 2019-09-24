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
     @@all.select do ||
            == self
     end
  end

end
