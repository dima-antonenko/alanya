class AddAvatarToProdutCategories < ActiveRecord::Migration
  def change
  	add_column :product_categories, :avatar
  	add_column :posts, :avatar
  	add_column :post_categories, :avatar
  end
end
