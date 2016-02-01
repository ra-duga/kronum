class AddAdressToDeeloper < ActiveRecord::Migration
  def change
    add_column :developers, :adress, :string
  end
end
