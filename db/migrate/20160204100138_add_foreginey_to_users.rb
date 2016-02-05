class AddForegineyToUsers < ActiveRecord::Migration
  def change
    add_foreign_key :users, :roles
  end
end
