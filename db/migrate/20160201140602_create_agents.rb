class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.string :low_name
      t.string :adress
      t.string :phone

      t.timestamps null: false
    end
  end
end
