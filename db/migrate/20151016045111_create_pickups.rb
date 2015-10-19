class CreatePickups < ActiveRecord::Migration
  def change
    create_table :pickups do |t|
      t.string :uid
      t.string :name
      t.decimal :long
      t.decimal :lat
      t.integer :obj_type
      t.string :image_url
      t.decimal :price
      t.date :start_time
      t.date :end_time
      t.text :description

      t.timestamps null: false
    end
  end
end
