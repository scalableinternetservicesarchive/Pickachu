class Pickup < ActiveRecord::Base
  # touch: true
  has_attached_file :avatar, styles: {
    tiny: "48x48#",
    medium: "300x300#",
    thumb: "100x100#"
  }, default_url: "/images/rwby.jpg"
  validates_attachment_content_type :avatar, content_type: ["image/jpg", "image/jpeg","image/png","image/gif"]
#  attr_accessible :name, :description

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

  # It returns the articles whose titles contain one or more words that form the query
  def self.search_des(query)
    # where(:title, query) -> This would return an exact match of the query
    where("description like ?", "%#{query}%")
  end

  def self.search_type(query)
    # where(:title, query) -> This would return an exact match of the query
    where("obj_type like ?", "%#{query}%")
  end


  def self.search_area(miles, lng, lat)
    where("lng > ? AND lng < ? AND lat > ? AND lat < ?",
            lng - miles.to_f/69, #/69
            lng + miles.to_f/69,
            lat - miles.to_f/69.712, #69.712
            lat + miles.to_f/69.712)
  end

end
