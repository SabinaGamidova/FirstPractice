json.extract! comment, :id, :comment_id, :text, :created_at, :updated_at
json.url comment_url(comment, format: :json)
