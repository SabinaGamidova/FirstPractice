class ClientProfile < ApplicationRecord  
  belongs_to :client

  has_many :client_likes
  has_many :services, through: :client_likes

  accepts_nested_attributes_for :client

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true

end
