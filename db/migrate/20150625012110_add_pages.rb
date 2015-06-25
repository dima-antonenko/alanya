class AddPages < ActiveRecord::Migration
  def change
  	add_column :static_pages, :descriptor, :string, index: true
  	add_column :static_pages, :meta_copyright, :string, index: true
  	
  	add_column :site_variables, :static_page_id, :integer, index: true
  end
end
