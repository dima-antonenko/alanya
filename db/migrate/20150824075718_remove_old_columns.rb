class RemoveOldColumns < ActiveRecord::Migration
  def change
  	remove_column :projects, :final_price
  	remove_column :projects, :final_price
  	add_column :projects, :final_price, :integer, index: true
  end
end
