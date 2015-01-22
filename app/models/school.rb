class School < ActiveRecord::Base

	def purchases
		SchoolPurchase.where(ben: self.ben)
	end
end
