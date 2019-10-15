class Review
    attr_reader :reviews

    @@all = []
  
    def self.all
    @@all
    end 
  
    def initialize(reviews)
      @reviews = reviews
      @@all << self 
    end

  def customer 
    # returns the customer object for that given review
    # Once a review is created, I should not be able to change the author
  
end


  def reviews
    # returns an array of all reviews for that restaurant

end 

def average_star_rating
    #returns the average star rating for a restaurant based on its reviews

end

def longest_review
    #returns the longest review content for a given restaurant.

    #Maybe use .length for this? Unsure
    

end

