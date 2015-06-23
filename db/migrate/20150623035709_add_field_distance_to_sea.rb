class AddFieldDistanceToSea < ActiveRecord::Migration
  def change
  	add_column :projects, :to_sea, :integer, index: true
  end
end
