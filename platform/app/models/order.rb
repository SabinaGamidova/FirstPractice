class Order < ApplicationRecord
  belongs_to :status, optional: true
  belongs_to :client_profile
  belongs_to :comment, optional: true
  belongs_to :employee_profile
  belongs_to :urgency
  belongs_to :service
end
