class RemoveOldColumn < ActiveRecord::Migration
  def change
  	remove_column :questions, :project_id
  	add_column :menu_items, :descriptor, :string, index: true
  	add_column :menus, :descriptor, :string, index: true
  end
end
