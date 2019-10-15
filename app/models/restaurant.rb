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
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    reviews.map { |review| review.customer }.uniq
  end

  def average_star_rating
    #sum and divide
    review_total = reviews.inject(0) do |sum, review|
      # binding.pry
      sum += review.rating
    end
    if reviews.length > 0
      review_total / reviews.length
    end
  end

  def longest_review
    reviews.max_by { |review| review.content.length }
  end

  def self.find_by_name(name)
    @@all.find { |restaurant| restaurant.name == name }
  end
end
