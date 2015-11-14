class AddAttachmentAvatarToPickups < ActiveRecord::Migration
  def self.up
    change_table :pickups do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :pickups, :avatar
  end
end
