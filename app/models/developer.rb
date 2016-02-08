class Developer < ActiveRecord::Base
  has_many :buildings
  validates :name, :adress, presence: true
  has_attached_file :avatar,
                  :url  => "/assets/developers/:id.:extension",
                  :path => ":rails_root/app/assets/images/developers/:id.:extension"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
