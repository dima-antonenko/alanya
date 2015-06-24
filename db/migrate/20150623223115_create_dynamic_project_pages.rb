class CreateDynamicProjectPages < ActiveRecord::Migration
  def change
    create_table :dynamic_project_pages do |t|
      t.string :title, index: true
      t.text :description, index: true
      t.string :query, index: true
      t.string :meta_title, index: true
      t.string :meta_description, index: true
      t.string :meta_keywords, index: true
      t.string :meta_copyright, index: true
      t.timestamps null: false
    end
  end
end