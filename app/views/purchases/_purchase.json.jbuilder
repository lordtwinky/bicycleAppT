json.extract! purchase, :id, :customer_id, :bicycle_id, :dateOfPurchase, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)