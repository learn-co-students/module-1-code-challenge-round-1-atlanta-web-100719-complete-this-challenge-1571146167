class Review
  attr_accessor :name, :restaurant, :rating, :content, :customer
  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end
end #End of Review class
