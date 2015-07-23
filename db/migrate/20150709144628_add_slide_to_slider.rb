class AddSlideToSlider < ActiveRecord::Migration
  def change
  	#remove_column :slides, :avatar_file_name
  	remove_column :slides, :avatar_content_type
  	remove_column :slides, :avatar_file_size
  	remove_column :slides, :avatar_updated_at

  	remove_column :banners, :avatar_file_name
  	remove_column :banners, :avatar_content_type
  	remove_column :banners, :avatar_file_size
  	remove_column :banners, :avatar_updated_at

  	remove_column :post_categories, :avatar_file_name
  	remove_column :post_categories, :avatar_content_type
  	remove_column :post_categories, :avatar_file_size
  	remove_column :post_categories, :avatar_updated_at

  	remove_column :posts, :avatar_file_name
  	remove_column :posts, :avatar_content_type
  	remove_column :posts, :avatar_file_size
  	remove_column :posts, :avatar_updated_at


  	add_column :slides, :image, :string, index: true
  	add_column :banners, :image, :string, index: true
  	add_column :post_categories, :string, :avatar, index: true
  	add_column :posts, :avatar, :string, index: true 	
  end
end