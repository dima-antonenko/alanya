class EditBannersImage < ActiveRecord::Migration
  def change
  	add_column :banners, :descriptor, :string, index: true
  end
end
