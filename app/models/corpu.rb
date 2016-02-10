class Corpu < ActiveRecord::Base
  belongs_to :building

  validates :name, :end_date_build, :building_id,  presence: true
end
