module Api
  class WineReviewsController < ApplicationController
    before_action :set_wine, only: [:index, :create]
    before_action :set_wine_review, only: [:update]

    def index
      @wine_reviews = @wine.wine_reviews
      render json: @wine_reviews
    end

    def create
      @wine_review = @wine.wine_reviews.build(wine_reviews_params)
      if @wine_review.save
        render json: @wine_review, status: :created
      else
        render json: @wine_review.errors, status: :unprocessable_entity
      end
    end

    def update
      if @wine_review.update(wine_reviews_params)
        render json: @wine_review
      else
        render json: @wine_review.errors, status: :unprocessable_entity
      end
    end

    private

    def set_wine
      @wine = Wine.find(params[:wine_id])
    end

    def set_review
      @wine_review = WineReview.find(params[:id])
    end

    def wine_reviews_params
      params.require(:review).permit(:content)
    end
  end
end
