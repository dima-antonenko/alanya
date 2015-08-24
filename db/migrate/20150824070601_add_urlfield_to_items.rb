class AddUrlfieldToItems < ActiveRecord::Migration
  def change
  	add_column :project_categories,    :url, :string, index: true
  	#add_column :post_categories,       :url, :string, index: true
  	#add_column :dynamic_project_pages, :url, :string, index: true 
  	#add_column :static_pages,          :url, :string, index: true
  end
end
