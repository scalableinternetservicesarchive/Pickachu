class Pickup < ActiveRecord::Base
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/twu.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
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



# 3959 是以 mile 為單位的常數，若要以 km 計，請替換成 6371
# (37, -122) 是你傳入的位置
# (lat, lng) 是 database 裡面，經緯度的 column name
# markers 是 database 的 table name
# SELECT id, ( 3959 * acos( cos( radians(37) ) * cos( radians( lat ) )
# * cos( radians( lng ) - radians(-122) ) + sin( radians(37) ) * sin(radians(lat)) ) ) AS distance
# FROM markers

# HAVING distance < 25
# ORDER BY distance
# LIMIT 0 , 20;

# HAVING distance < 25
# ORDER BY distance
# LIMIT 0 , 20;
# where(:title, query) -> This would return an exact match of the query

end
