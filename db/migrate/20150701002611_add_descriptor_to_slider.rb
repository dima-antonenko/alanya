class AddDescriptorToSlider < ActiveRecord::Migration
  def change
  	add_column :sliders, :descriptor, :string, index: true
  	add_column :slides, :price, :string, index: true
  	add_column :slides, :description, :string, index: true
  	add_column :slides, :link, :string, index: true
  end
end
