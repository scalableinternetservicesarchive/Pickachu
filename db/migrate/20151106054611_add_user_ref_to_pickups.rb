class AddUserRefToPickups < ActiveRecord::Migration
  def change
    add_reference :pickups, :user, index: true, foreign_key: true
  end
end
