class Comission < ActiveRecord::Base
  belongs_to :agent
  belongs_to :building

  validates :value, :set_date, :agent_id, :building_id,  presence: true
  validates_numericality_of :value, :greater_than => 0, :less_than => 100

end
