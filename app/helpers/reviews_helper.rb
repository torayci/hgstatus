module ReviewsHelper
	def review_params
	  params.require(:review).permit(:reviewer_name, :body)
	end
end
