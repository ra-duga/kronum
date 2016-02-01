class AddCreatedByToDevelopers < ActiveRecord::Migration
  def change
        add_column :developers, :created_by, :integer

  end
end
