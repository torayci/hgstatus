class SkinProfilesController < ApplicationController
	def show
		@user_concerns = User.find(current_user).skin_concerns
	end

	def edit
		@user = User.find(current_user)
	end
end
