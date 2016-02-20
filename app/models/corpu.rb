class Corpu < ActiveRecord::Base
  belongs_to :building
  has_and_belongs_to_many :offers

  validates :name, :end_date_build, :building_id,  presence: true


end