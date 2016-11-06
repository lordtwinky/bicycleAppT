json.extract! customer, :id, :userName, :phoneNum, :dob, :address, :email, :password_digest, :created_at, :updated_at
json.url customer_url(customer, format: :json)