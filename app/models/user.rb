class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name,  presence: true, uniqueness: true
  validates :role, presence: true

  belongs_to   :role
  has_many     :offers

  def admin?
    self.role.name == "Admin"
  end

  def manager?
    self.role.name == "Manager"
  end

  def topmanager?
    self.role.name == "Topmanager"
  end


end
