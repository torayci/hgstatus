module ReviewsHelper
	def review_params
	  params.require(:review).permit(:reviewer_name, :rating, :body)
	end
end
