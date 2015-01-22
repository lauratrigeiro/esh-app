class School < ActiveRecord::Base
	validates :name, presence: true, allow_blank: false
	validates :ben, presence: true, allow_blank: false, uniqueness: true

	def purchases
		SchoolPurchase.where(ben: self.ben)
	end
end
