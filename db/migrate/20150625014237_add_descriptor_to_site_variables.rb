class AddDescriptorToSiteVariables < ActiveRecord::Migration
  def change
  	add_column :site_variables, :descriptor, :string, index: true
  	remove_column :site_variables, :place
  end
end
