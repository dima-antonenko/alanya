class AddAttachmentAvatarToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :avatar, :srting
  end

  def self.down
    remove_column :products, :avatar
  end
end
