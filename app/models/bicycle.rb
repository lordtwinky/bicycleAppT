class Bicycle < ActiveRecord::Base
	has_many :purchases, dependent: :destroy
	has_many :rents, dependent: :destroy
	has_many :comments, dependent: :destroy
	
	attr_accessible :typeOfBicycle, :modelName, :purchaseCost
	
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
	
	def self.search(term)
		where("modelName like :term or typeOfBicycle like :term", term: "%#{term}%")
	end
	
	def apply_discount(bicycle, discount)
		if !bicycle.nil?
			bicycle.purchaseCost = bicycle.purchaseCost - bicycle.purchaseCost * discount/100
		end
	end
	

end
