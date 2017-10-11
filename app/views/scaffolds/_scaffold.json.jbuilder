json.extract! scaffold, :id, :review, :product_id, :user_id, :rating, :description, :created_at, :updated_at
json.url scaffold_url(scaffold, format: :json)
