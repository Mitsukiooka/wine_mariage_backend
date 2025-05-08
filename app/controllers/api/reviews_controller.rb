module Api
  class ReviewsController < ApplicationController
    before_action :set_wine, only: [:index, :create]
    before_action :set_review, only: [:update]

    def index
      @reviews = @wine.reviews.includes(:user)
      render json: @reviews
    end

    def create
      @review = @wine.reviews.build(review_params.merge(user: current_user))
      if @review.save
        render json: @review, status: :created
      else
        render json: @review.errors, status: :unprocessable_entity
      end
    end

    def update
      if @review.update(review_params)
        render json: @review
      else
        render json: @review.errors, status: :unprocessable_entity
      end
    end

    private

    def set_wine
      @wine = Wine.find(params[:wine_id])
    end

    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:content)
    end
  end
end
