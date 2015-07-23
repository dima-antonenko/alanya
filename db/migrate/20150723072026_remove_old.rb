class RemoveOld < ActiveRecord::Migration
  def change
  	remove_column :projects, :start_price, :string
  	remove_column :projects, :final_price, :string
  end
end
