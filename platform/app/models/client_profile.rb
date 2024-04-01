class ClientProfile < ApplicationRecord  
  belongs_to :client, dependent: :destroy

  has_many :orders, dependent: :destroy
  has_many :client_likes, dependent: :destroy
  has_many :services, through: :client_likes

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true

end
