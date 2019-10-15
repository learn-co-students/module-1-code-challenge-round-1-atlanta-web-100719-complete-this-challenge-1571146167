require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

otb = Restaurant.new("On The Border")
chilles = Restaurant.new("Chilles")
wafhouse = Restaurant.new("Waffle House")

kuran = Customer.new("Kuran", "Kumar")
noah = Customer.new("Noah", "Blumar")
nik = Customer.new("Nik", "Poomar")

krev1 = Review.new(kuran, otb, 3, "The food is aight but working there must be a nightmare")
krev2 = Review.new(kuran, chilles, 2, "The food is aight")
krev3 = Review.new(kuran, wafhouse, 5, "The food is good no matter what")
krev4 = Review.new(kuran, otb, 2, "Food got worse after working there")

nikrev1 = Review.new(nik, otb, 4, "Better than nothing worse than Taco Bell")
nikrev2 = Review.new(nik, chilles, 1, "Its not Taco Bell so it sucks")

noahrev1 = Review.new(noah, chilles, 2, "Wowy wow woah this place stinks")
noahrev2 = Review.new(noah, wafhouse, 4, "Waffles are good but pancakes are better")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
