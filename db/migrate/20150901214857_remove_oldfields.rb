class RemoveOldfields < ActiveRecord::Migration
  def change
  	remove_column :projects, :meta_copyright
  	remove_column :project_categories, :meta_copyright
  	remove_column :dynamic_project_pages, :meta_copyright
  	drop_table :dynamic_pages
  end
end
