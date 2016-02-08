class CreateBCorpus < ActiveRecord::Migration
  def change
    create_table :b_corpus do |t|
      t.string :name
      t.text :description
      t.date :end_date_build
      t.belongs_to :b_queue, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
