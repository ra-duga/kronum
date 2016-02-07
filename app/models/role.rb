class Role < ActiveRecord::Base
  has_many :users
  validates :name,  presence: true, uniqueness: true
  validates :description, presence: true

end
