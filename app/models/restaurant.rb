class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all
    @@all 
  end 

def reviews 
  Review.all.select do |review|
    review.customers == self
  end

  def customers
    reviews.map do |review|
      review.customer
  end.uniq


  
end
