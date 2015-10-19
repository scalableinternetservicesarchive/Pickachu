class AddReputationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :reputation, :double, :default => 0
  end
end
