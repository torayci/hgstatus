class SkinConcern < ActiveRecord::Base
	has_many :skin_profiles
	has_many :users, through: :skin_profiles
end
