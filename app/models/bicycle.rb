class Bicycle < ActiveRecord::Base
	has_many :purchases, dependent: :destroy
	has_many :rents, dependent: :destroy
	has_many :comments, dependent: :destroy
	
	validates :modelName, presence: true
	validates :modelName, uniqueness: true
	validates :purchaseCost, presence: true
	validates :rentCostDay, presence: true
	validates :frame, presence: true
	validates :typeOfBicycle, presence: true
	validates :image, presence: true
	
	def average_stars
		comments.average(:stars)
	end

end
