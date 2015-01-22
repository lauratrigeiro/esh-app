class Organization
	include Mongoid::Document
	field :name, type: String
	field :ben, type: String
	validates :name, presence: true, allow_blank: false
	validates :ben, presence: true, allow_blank: false
	validates_uniqueness_of :ben
	embeds_many :purchases
end