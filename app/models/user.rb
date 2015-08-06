class User < ActiveRecord::Base
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "should match confirmation", if: :password

  has_many :skin_profiles
  has_many :skin_concerns, through: :skin_profiles
end
