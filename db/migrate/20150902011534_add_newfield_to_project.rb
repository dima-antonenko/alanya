class AddNewfieldToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :to_our_projects_page, :boolean, default: false
  	add_column :projects, :our_projects_page_order, :integer, default: 1

  end
end
