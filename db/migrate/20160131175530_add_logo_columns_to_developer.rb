class AddLogoColumnsToDeveloper < ActiveRecord::Migration
      change_table :developers do |t|
        t.has_attached_file :avatar

    end
end
