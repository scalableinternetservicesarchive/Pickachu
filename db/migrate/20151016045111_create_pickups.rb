class CreatePickups < ActiveRecord::Migration
  def change
    create_table :pickups do |t|
      t.string :uid
      t.string :name
      t.float :long
      t.float :lat
      t.integer :obj_type
      t.string :image_url
      t.float :price
      t.date :start_time
      t.date :end_time
      t.text :description

      t.timestamps null: false
    end
  end
end
