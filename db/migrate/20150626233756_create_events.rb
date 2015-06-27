class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, index: true
      t.text :description, index: true
      t.string :avatar, index: true
      t.datetime :date, index: true
      t.text :lead, index: true

      t.timestamps null: false
    end
  end
end
