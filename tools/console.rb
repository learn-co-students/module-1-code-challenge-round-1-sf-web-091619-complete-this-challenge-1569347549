require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# customer -    initialize(first_name, last_name)
# restaurant -  initialize(name)
# review -      initialize (customer, restaurant, content, rating)

adam = Customer.new("Adam", "LaRosa")
emiley = Customer.new("Emiley", "Palmquist")
morgan = Customer.new("Morgan", "Missentzis")
adam2 = Customer.new("Adam", "Aaddaammss")

veronas = Restaurant.new("Verona's Italian")
chefs = Restaurant.new("Chefs of New York")

dinner1 = Review.new(adam, veronas, "It's the bomb!", 4)
dinner2 = Review.new(adam, chefs, "BOMB DIGGIETY", 5)
dinner3 = Review.new(adam, veronas, "2nd visit, not as good", 3)
dinner4 = Review.new(adam, veronas, "3rd visit, better than ever!", 5)
dinner5 = Review.new(morgan, chefs, "hated it", 2)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line