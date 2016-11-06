json.extract! bicycle, :id, :modelName, :colour, :secondHand, :purchaseCost, :rentCostDay, :frame, :typeOfBicycle, :image, :created_at, :updated_at
json.url bicycle_url(bicycle, format: :json)