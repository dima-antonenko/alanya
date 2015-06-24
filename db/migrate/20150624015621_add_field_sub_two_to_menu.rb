class AddFieldSubTwoToMenu < ActiveRecord::Migration
  def change
  	add_column :menu_items, :sub_two, :boolean, index: true
  end
end
