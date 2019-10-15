require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("Billy", "Bob")
customer2 = Customer.new("Billy", "Jean")
customer3 = Customer.new("Robby", "Bobby")
customer4 = Customer.new("Gucci", "Mane")

rest1 = Restaurant.new("Jacks!")
rest2 = Restaurant.new("Bills!")
rest3 = Restaurant.new("Waffle House!")
rest4 = Restaurant.new("Chipotle!")


customer1.add_review(rest1, "trashy", 3)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line