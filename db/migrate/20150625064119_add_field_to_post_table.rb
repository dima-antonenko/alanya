class AddFieldToPostTable < ActiveRecord::Migration
  def change
  	add_column :posts, :to_main_page, :boolean, index: true, default: false
  	add_column :posts, :mini_lead, :string, index: true
  end
end
