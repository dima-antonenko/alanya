class AddFieldCheckToMain < ActiveRecord::Migration
  def change
  	add_column :projects, :elect, :boolean, index: true
  	add_column :managers, :elect, :boolean, index: true
  end
end
