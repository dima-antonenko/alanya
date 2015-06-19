class AddCustomSkuToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :custom_sku, :boolean, index: true, default: false
  end
end
