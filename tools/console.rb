require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

norris_chebl = Customer.new("Norris", "Chebl")

test_rest = Restaurant.new("Test Rest")

bob_rev = Review.new(norris_chebl, test_rest, 2, "This is great.")

norris_pizza = Review.new(norris_chebl, test_rest, 4, "This is great.")
chebl_burger = Review.new("Norris", "Burger Place", 3, "This is bad.")




binding.pry
0 #leave this here to ensure binding.pry isn't the last line