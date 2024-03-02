json.extract! order, :id, :order_id, :status, :client, :comment, :employee, :urgency, :date_order, :service, :price, :created_at, :updated_at
json.url order_url(order, format: :json)
