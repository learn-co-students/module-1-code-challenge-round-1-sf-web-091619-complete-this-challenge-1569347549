require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("Urfan", "Guliyev")
customer2 = Customer.new("Bradd", "Pitt")


rest1 = Restaurant.new("Atera")
rest2 = Restaurant.new ("Coppa")

review1 = Review.new(customer1, rest1, "Amazing", 5)
review2 = Review.new(customer1, rest2, "It was fine", 3)
review3 = Review.new(customer2, rest1, "Not bad", 2)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line