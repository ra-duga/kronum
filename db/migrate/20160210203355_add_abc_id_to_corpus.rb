class AddAbcIdToCorpus < ActiveRecord::Migration
  def change
    add_column :corpus, :abcid, :integer
  end
end
