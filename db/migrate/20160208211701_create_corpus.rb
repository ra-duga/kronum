class CreateCorpus < ActiveRecord::Migration
  def change
    create_table :corpus do |t|
      t.string :name
      t.text :description
      t.date :end_date_build
      t.belongs_to :building, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
