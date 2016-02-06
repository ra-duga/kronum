class CreateRolesNew < ActiveRecord::Migration
  def change
    drop_table (:roles)
    create_table(:roles) do |t|
          t.string :name,              null: false, default: ""
          t.string :description, null: false, default: ""
          t.timestamps null: false
    end
  end
end
