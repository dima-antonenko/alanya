class AddUrlToPost < ActiveRecord::Migration
  def change
  	add_column :posts, :url, :string, index: true
  end
end
