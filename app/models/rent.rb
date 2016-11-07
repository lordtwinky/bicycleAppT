class Rent < ActiveRecord::Base
	belongs_to :bicycle
	belongs_to :customer
	
	validates :customer_id, presence: true
	validates :bicycle_id, presence: true
	validates :numOfDays, presence: true
	validates :numOfDays, :numericality => { :greater_than_or_equal_to => 1 }
	validates :dateOfRent, presence: true

end
