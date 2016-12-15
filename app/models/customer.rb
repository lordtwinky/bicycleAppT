class Customer < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
	has_many :purchases, dependent: :destroy
	has_many :rents, dependent: :destroy
	has_many :comments
	has_secure_password
	validates_uniqueness_of :email
	validates :email, format: {with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
	
	validates :userName, presence: true
	validates :userName, uniqueness: true
	validates :phoneNum, presence: true
	validates :dob, presence: true
	validates :address, presence: true
	validates :email, presence: true
	validates :password_digest, presence: true
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	
end
