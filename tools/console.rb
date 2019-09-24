require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
r1 = Restaurant.new("Bowl'd")
r2 = Restaurant.new("Cholita Linda")
r3 = Restaurant.new("Huong Tra")

c1 = Customer.new("Max", "Zakzook")
c2 = Customer.new("Megan", "Carey")
c3 = Customer.new("Senor", "Ralph")

re1 = Review.new(c1, r1, "goieoieveoi", 3)
re2 = Review.new(c1, r1, "gheoieho", -1)
re3 = Review.new(c2, r2, "geoehoeiehehivoehiovheo", 5)
re4 = Review.new(c3, r3, "goeehoe", 4)
re5 = Review.new(c1, r1, "goiedfffoieveoi", 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line