class SchoolPurchase < ActiveRecord::Base
	validates :ben, presence: true, allow_blank: false
	validates :bandwidth, presence: true, 
			  inclusion: { in: [10, 100, 1000] } 
	validates :measure, presence: true, allow_blank: false,
			  inclusion: { in: ["k", "m", "g", "t"] } 
	validates :cost, presence: true

	def school
		School.where(ben: self.ben).first
	end
end
