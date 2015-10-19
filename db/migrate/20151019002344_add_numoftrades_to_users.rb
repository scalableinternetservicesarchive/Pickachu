class AddNumoftradesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :number_of_trades, :int, :default => 0
  end
end
