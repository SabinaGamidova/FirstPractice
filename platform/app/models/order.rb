class Order < ApplicationRecord
  belongs_to :status
  belongs_to :client_profile
  belongs_to :comment
  belongs_to :employee
  belongs_to :urgency
  belongs_to :service
end
