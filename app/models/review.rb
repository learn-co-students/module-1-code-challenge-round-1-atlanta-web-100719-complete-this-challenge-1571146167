class Review
  attr_reader :customer, :restaurant
  attr_accessor :content, :rating
  @@all = []

  def initialize(restaurant, customer, content, rating)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end
end
