require "pry"

class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  # def self.all_names
  #   @@all.select do |f, l|
  #     [@@all[f], @@all[l]]
  #   end
  # end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end.length
  end

  def restaurants
    reviewed = Review.all.select do |review|
      review.customer == self
    end
    reviewed.map do |review|
      review.restaurant
    end.uniq
  end
end #End of Customer class
