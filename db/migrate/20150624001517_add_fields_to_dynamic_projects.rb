class AddFieldsToDynamicProjects < ActiveRecord::Migration
  def change
  	add_column :dynamic_project_pages, :project_category_id, :integer, index: true
  end
end
