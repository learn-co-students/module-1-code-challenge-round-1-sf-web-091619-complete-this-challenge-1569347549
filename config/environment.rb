require 'bundler/setup'
Bundler.require
require_rel '../app'

# first_customer = Customer.new("mustafa","muse")
# second_customer = Customer.new("timothy","smith")
# fastfood = Restaurant.new("mcdonalds")
# fastfood = Restaurant.new("tacobell")
# first = Review.new(muse,fastfood,"food", 5)
# second = Review.new(tim,fastfood,"food", 9)

# puts second

first_customer = Customer.new("Mustafa", "Muse")
second_customer = Customer.new("Will", "Smith")


mcdonalds = Restaurant.new("Mcds")
tacobell = Restaurant.new("Taco Bell!")


review_1 = Review.new("muse",mcdonalds,"fastfood", 3 )
review_2 = Review.new("tim",tacobell,"fastfood", 2 )


binding.pry


