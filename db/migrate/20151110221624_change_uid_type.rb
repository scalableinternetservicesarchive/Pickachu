class ChangeUidType < ActiveRecord::Migration
  def change
    change_column(:pickups, :uid, :integer)
    rename_column(:pickups, :uid, :user_id)
  end
end
