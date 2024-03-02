json.extract! client, :id, :client_id, :name, :surname, :patronymic, :phone, :email, :address, :login, :password, :created_at, :updated_at
json.url client_url(client, format: :json)
