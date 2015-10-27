class CreateNearbies < ActiveRecord::Migration
  def change
    create_table :nearbies do |t|

      t.timestamps null: false
    end
  end
end
