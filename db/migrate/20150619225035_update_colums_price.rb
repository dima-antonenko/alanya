class UpdateColumsPrice < ActiveRecord::Migration
  def change
  	

  	add_column :projects, :start_pice, :integer, default: 0, index: true
  	add_column :projects, :final_pice, :integer, default: 0, index: true
  end
end
