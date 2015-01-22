class Purchase
	include Mongoid::Document
	field :bandwidth, type: Integer
	field :measure, type: String
	field :cost, type: Integer
	validates :bandwidth, presence: true, 
			  inclusion: { in: [10, 100, 1000] } 
	validates :measure, presence: true, allow_blank: false,
			  inclusion: { in: ["k", "m", "g", "t"] } 
	validates :cost, presence: true
	embedded_in :organization
end