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

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, content, rating)
  end

  def reviews
    Review.all.select { |review| review.customer == self }
  end

  def num_reviews
    reviews.length
  end

  def restaurants
    reviews.map { |review| review.restaurant }
  end

  def self.all_names
    @@all.map { |customer| customer.first_name + " " + customer.last_name }
  end

  def self.find_all_by_first_name(name)
    @@all.select { |customer| customer.first_name == name }
  end

  def self.find_by_name(name)
    split_name = name.split(" ")
    first_name = split_name[0]
    last_name = split_name[1]
    find_all_by_first_name(first_name).find { |customer| customer.last_name == last_name }
    # binding.pry
  end
end
