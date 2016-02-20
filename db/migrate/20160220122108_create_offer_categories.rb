class CreateOfferCategories < ActiveRecord::Migration
  def change
    create_table :offer_categories do |t|
      t.string :name
      t.timestamps null: false
    end
    add_reference :offers, :offer_categories, index: true
  end
end
