class Pickup < ActiveRecord::Base
#  attr_accessible :name, :description

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

  # It returns the articles whose titles contain one or more words that form the query
  def self.search_des(query)
    # where(:title, query) -> This would return an exact match of the query
    where("description like ?", "%#{query}%")
  end

  def self.search_area(query)
    SELECT id, ( 3959 * acos( cos( radians(37) ) * cos( radians( lat ) ) )
    where("description like ?", "%#{query}%") )
  end
# 3959 是以 mile 為單位的常數，若要以 km 計，請替換成 6371
# (37, -122) 是你傳入的位置
# (lat, lng) 是 database 裡面，經緯度的 column name
# markers 是 database 的 table name
# * cos( radians( lng ) - radians(-122) ) + sin( radians(37) ) * sin(radians(lat)) ) ) AS distance
# FROM markers
# HAVING distance < 25
# ORDER BY distance
# LIMIT 0 , 20;
# where(:title, query) -> This would return an exact match of the query

end
