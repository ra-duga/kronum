class ChangeComission < ActiveRecord::Migration
  def change
    remove_column :comissions, :is_episode
    remove_column :comissions, :start_epizode
    remove_column :comissions, :end_epizode
    add_column :comissions, :set_date, :date
  end
end
