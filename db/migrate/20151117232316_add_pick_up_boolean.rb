class AddPickUpBoolean < ActiveRecord::Migration
  def change
  	add_column :pickups, :pickedup, :boolean, default: false

  end
end
