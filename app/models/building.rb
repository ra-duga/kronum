class Building < ActiveRecord::Base
  belongs_to :developer
  has_many :comissions
  has_many :agents, through: :comissions
end
