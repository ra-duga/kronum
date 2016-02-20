class Developer < ActiveRecord::Base
  has_many :buildings
  validates :name, :adress, presence: true
  validates :avatar, presence: true
  has_attached_file :avatar,
                  :url  => "/assets/developers/:id.:extension",
                  :path => ":rails_root/app/assets/images/developers/:id.:extension"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  scope :all_by_corpus, -> { joins(:buildings).where("buildings.developer_id = developers.id").group("developer_id").joins(buildings: :corpus)
  	.where("corpus.building_id = buildings.id")}

  scope :by_offer, -> (offer_id) {
    joins(:buildings).where("buildings.developer_id = developers.id").group("developer_id")
    .joins(buildings: :corpus).where("corpus.building_id = buildings.id")
    .joins("inner join corpus_offers on corpus.id = corpus_offers.corpu_id").where("corpus_offers.offer_id = ?", offer_id) if offer_id.to_i >0}

end
