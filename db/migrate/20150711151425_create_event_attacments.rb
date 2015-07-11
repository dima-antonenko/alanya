class CreateEventAttacments < ActiveRecord::Migration
  def change
    create_table :event_attacments do |t|
      t.belongs_to :event, index: true
      t.string :image, index: true
      
      t.timestamps null: true
    end
  end
end
