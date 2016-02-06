class Comission < ActiveRecord::Base
  belongs_to :agent
  belongs_to :building

  validates :value, presence: true
  validates_numericality_of :value, :greater_than => 0, :less_than => 100
  validates :start_epizode, :end_epizode, presence: true, if: :is_episode

end