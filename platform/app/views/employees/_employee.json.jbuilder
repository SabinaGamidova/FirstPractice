json.extract! employee, :id, :employee_id, :name, :surname, :patronymic, :phone, :email, :date_registration, :position, :specialization, :login, :password, :created_at, :updated_at
json.url employee_url(employee, format: :json)
