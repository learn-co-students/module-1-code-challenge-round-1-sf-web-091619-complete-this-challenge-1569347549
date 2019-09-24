require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

katherine = Customer.new("Katherine", "Kelly")
phil = Customer.new("Phil", "Kelly")
kat = Customer.new("Katherine", "Kwong")
momofuku = Restaurant.new("Nishi")
udon_time = Restaurant.new("Udon Time")
shakeshack = Restaurant.new("Shake Shack")


Review.new(katherine, momofuku, 5, "so delicious")
katherine.add_review(udon_time, "favorite udon", 5)
katherine.add_review(momofuku, "all time fav right here", 5)
phil.add_review(momofuku, "second fav", 4)

Review.new(kat, shakeshack, 4, "second best burger")


# p Review.all
p katherine.num_reviews
puts
puts
p katherine.restaurants
puts
puts
p momofuku.customers
puts
p momofuku.customers
p momofuku.reviews
puts
p momofuku.average_star_rating

puts
p momofuku.longest_review
puts
puts
p Customer.find_by_name("Katherine Kelly")
puts
p Customer.find_all_by_first_name("Katherine") 
puts
p Restaurant.find_by_name("Shake Shack")

# binding.pry
0 #leave this here to ensure binding.pry isn't the last line