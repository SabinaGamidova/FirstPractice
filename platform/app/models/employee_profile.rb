class EmployeeProfile < ApplicationRecord
  belongs_to :employee
  belongs_to :specialization
  has_many :services, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true
  validates :date_registration, presence: true
  validates :specialization, presence: true

end
