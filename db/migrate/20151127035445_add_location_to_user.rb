class AddLocationToUser < ActiveRecord::Migration
  def change
  	 add_column :users, :lng, :float
  	 add_column :users, :lat, :float

  end
end
