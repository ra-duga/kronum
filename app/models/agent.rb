class Agent < ActiveRecord::Base
  has_many :comissions, dependent: :destroy
end
