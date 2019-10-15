require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
clark = Customer.new("Clark", "Johnson")
kathy = Customer.new("Kathy", "Brown")
samantha = Customer.new("Samantha", "Charles")
sam2 = Customer.new("Samantha", "Bixby")
mike = Customer.new("Michael", "Turner")

moes = Restaurant.new("Moe's")
chilis = Restaurant.new("Chili's")
diner = Restaurant.new("Metro Diner")

clark.add_review(moes, "I like this place a lot", 4)
clark.add_review(moes, "The potatoes are excellent.  They were cooked perfectly", 5)
clark.add_review(moes, "Not so good. Janice was my server", 1)
kathy.add_review(chilis, "I've had better", 3)
samantha.add_review(chilis, "The tacos are the best", 5)
sam2.add_review(chilis, "The tacos are the best", 5)

binding.pry

0 #leave this here to ensure binding.pry isn't the last line
