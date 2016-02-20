class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :title
      t.text :text
      t.date :start_date
      t.date :and_date

      t.timestamps null: false
    end
    create_table :corpus_offers, id: false do |t|
      t.belongs_to :offers, index: true
      t.belongs_to :corpus, index: true
    end

  end
end
