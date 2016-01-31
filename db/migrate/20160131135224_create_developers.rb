class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name
      t.text :description
      t.string :logo_url

      t.timestamps null: false
    end
  end
end
