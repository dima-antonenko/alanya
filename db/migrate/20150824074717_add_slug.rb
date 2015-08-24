class AddSlug < ActiveRecord::Migration
  def change
  	remove_column :project_categories,    :url
  	
  	remove_column :posts,                 :url

  	add_column :project_categories,    :slug, :string, index: true
  	add_column :post_categories,       :slug, :string, index: true
  	add_column :dynamic_project_pages, :slug, :string, index: true
  	add_column :static_pages,          :slug, :string, index: true
  	add_column :posts,                 :slug, :string, index: true
  end
end
