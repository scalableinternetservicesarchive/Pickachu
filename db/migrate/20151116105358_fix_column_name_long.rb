class FixColumnNameLong < ActiveRecord::Migration
  def change
    rename_column :pickups, :long, :lng
  end
end
