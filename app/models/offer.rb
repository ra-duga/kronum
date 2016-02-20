class Offer < ActiveRecord::Base
  has_and_belongs_to_many :corpus
<<<<<<< HEAD
  belongs_to :user
  belongs_to :offer_category
  validates :name, :start_date, :end_date, :text, presence: true
end


=======
end
>>>>>>> CreateOffers
