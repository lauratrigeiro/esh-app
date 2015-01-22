class Organization
	include Mongoid::Document
	field :name, type: String
	field :ben, type: String

	embeds_many :purchases
end