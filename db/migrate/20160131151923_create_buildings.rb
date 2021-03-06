class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.belongs_to :developer, index: true, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
