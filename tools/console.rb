require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

bob = Customer.new("bobbie","marshal")
dan = Customer.new('dan', 'the man')
sara = Customer.new('sara', 'jones')
helen = Customer.new('sara', 'jones')

red_robin = Restaurant.new("Red Robin")
olive_garden = Restaurant.new("Olive Garden")
holders = Restaurant.new("Holders")
oliive = Restaurant.new("Olive Garden")

review_1 = Review.new(sara, red_robin, "Yuummm", 5)
review_2 = Review.new(bob, red_robin, "Yuummmy", 4)
review_3 = Review.new(sara, olive_garden, "pasta", 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line