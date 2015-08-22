class AddnewFieldsToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :slug, :string, index: true
  	add_column :projects, :url, :string, index: true

  	add_column :projects, :bedrooms, :integer, index: true
  	add_column :projects, :bathroom, :integer, index: true
	
	add_column :projects, :balcony, :boolean, index: true, default: false
  	add_column :projects, :cabel_tv, :boolean, index: true, default: false
  	add_column :projects, :internet, :boolean, index: true, default: false
  	add_column :projects, :parking, :boolean, index: true, default: false
  	add_column :projects, :elevator, :boolean, index: true, default: false
	add_column :projects, :garden, :boolean, index: true, default: false
	add_column :projects, :pool, :boolean, index: true, default: false



  end
end
