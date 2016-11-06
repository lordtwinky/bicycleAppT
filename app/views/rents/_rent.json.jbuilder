json.extract! rent, :id, :customer_id, :bicycle_id, :numOfDays, :dateOfRent, :created_at, :updated_at
json.url rent_url(rent, format: :json)