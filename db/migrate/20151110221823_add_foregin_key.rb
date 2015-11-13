class AddForeginKey < ActiveRecord::Migration
  def change
    add_foreign_key :pickups, :users, on_delete: :cascade
  end
end
