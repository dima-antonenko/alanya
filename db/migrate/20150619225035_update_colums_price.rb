class UpdateColumsPrice < ActiveRecord::Migration
  def change
  	remove_column :projects, :start_pice, :string
  	remove_column :projects, :final_pice, :string

  	add_column :projects, :start_pice, :integer, default: 0, index: true
  	add_column :projects, :final_pice, :integer, default: 0, index: true
  end
end
