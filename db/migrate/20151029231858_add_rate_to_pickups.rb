class AddRateToPickups < ActiveRecord::Migration
  def change
  	   	add_column :pickups, :rate, :double, :default => 0
    	add_column :pickups, :comment, :text
  end
end
