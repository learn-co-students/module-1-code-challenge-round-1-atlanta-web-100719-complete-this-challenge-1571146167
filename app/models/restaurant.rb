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

  def customers
    cust_reviews = Review.all.select do |review|
      review.restaurant == self
    end
    cust_reviews.map do |review|
      review.customer
    end.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def longest_review
    all_rev = Review.all.select do |review|
      review.restaurant == self
    end
    all_content = all_rev.map do |review|
      review.content
    end
    all_content.max_by(&:length)
  end
end #End of Restaurant class
