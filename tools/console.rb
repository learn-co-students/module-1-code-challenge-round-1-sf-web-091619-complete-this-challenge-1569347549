require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

the_market = Review.new('daniel', 'market', 4, 'it was pretty good')
the_market1 = Review.new('daniel','cafe', 6, 'it was bomb')
the_market2 = Review.new('daniel','deli', 0, 'it was absolutely terrible')
hello = Restaurant.new('subway')
hello.longest_review
employee = Customer.new('daniel','joo')

binding.pry
0 #leave this here to ensure binding.pry isn't the last line