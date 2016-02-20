class CreateJoinTableCorpuOffer < ActiveRecord::Migration
  create_join_table :corpus, :offers do |t|
    t.index [:corpu_id, :offer_id]
    t.index [:offer_id, :corpu_id]
  end
end
