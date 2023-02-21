module Api
  # Review CRUD
  class ReviewsController < Api::BaseController
    def create
      review = Review.create!(review_params)

      render json: { review_id: review.id }, status: :created
    end

    def update
      review = Review.find(params[:id])
      review.update!(review_params)

      render json: { review_id: review.id }, status: :ok
    end

    private

    def review_params
      params.permit([:wine_id, :profile_id, :content])
    end
  end
end
