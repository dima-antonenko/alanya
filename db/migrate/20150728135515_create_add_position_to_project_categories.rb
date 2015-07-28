class CreateAddPositionToProjectCategories < ActiveRecord::Migration
  def change
    add_column :project_categories, :position, :integer, index: true
  end
end
