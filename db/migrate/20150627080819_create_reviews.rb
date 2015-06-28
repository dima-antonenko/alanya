class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name, index: true
      t.string :email, index: true
      t.text :content, index: true
      t.boolean :published, default: false, index: true
      t.timestamps null: false
    end
  end
end
