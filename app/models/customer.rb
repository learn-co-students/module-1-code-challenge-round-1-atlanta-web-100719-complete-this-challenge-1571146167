class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def self.all
@@all
  end 

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self 
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    @restaurant = restaurant
    @content = content
    @rating = rating 
    #given a restaurant object, some review content (as a string), 
    #and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  end 

  def num_reviews
    #Returns the total number of reviews that a customer has authored
  end 
    
  def find_by_name(name)
    #given a string of a full name, returns the first customer whose full name matches
  end 

  def find_all_by_first_name(name)
    #given a string of a first name, returns an array containing all customers with that first name
  end 

  def all_names
    #should return an array of all of the customer full names
  end 
    


end
