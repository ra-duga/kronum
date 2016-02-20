class Building < ActiveRecord::Base
  belongs_to :developer
  has_many :comissions, dependent: :destroy
  has_many :agents, through: :comissions, dependent: :destroy
  has_many :corpus, dependent: :destroy

end
