class Pickup < ActiveRecord::Base
  attr_accessible :name, :description
 
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
 
  # It returns the articles whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("description like ?", "%#{query}%") 
  end
end
