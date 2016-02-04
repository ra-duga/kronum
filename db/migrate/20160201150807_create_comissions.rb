class CreateComissions < ActiveRecord::Migration
  def change
    create_table :comissions do |t|
      t.boolean :is_episode
      t.date :start_epizode
      t.date :end_epizode
      t.float :value, precision: 2, scale: 2
      t.text :comment
      t.belongs_to :agent, index: true, foreign_key: true
      t.belongs_to :building, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
