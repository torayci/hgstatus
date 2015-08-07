class SkinConcern < ActiveRecord::Base
	has_many :skin_profiles
	has_many :users, through: :skin_profiles

	def to_s
		name
	end
end
