require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



ihop = Restaurant.new("ihop")

joe_snow = Customer.new("Joe","Snow")

great = Review.new("joe snow","ihop",6, "great")
sucks = Review.new("james","ihop",0, "sucks")
avg = Review.new("james","ihop",3, "average")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line