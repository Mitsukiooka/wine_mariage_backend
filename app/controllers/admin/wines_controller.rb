module Admin
  # Wine CRUD
  class WinesController < Admin::BaseController
    before_action :set_wine, only: [:show, :update, :destroy]

    def index
      @wines = Wine.all
    end

    def create
      @wine = Wine.create!(wine_params)
    end

    def show
    end

    def update
      @wine.update!(wine_params)
    end

    def destroy
      @wine.delete!
    end

    private

    def set_wine
      @wine = Wine.find(params[:id])
    end

    def wine_params
      params.permit([:name, :kind, :country, :maker, :color, :body, :aroma, :score])
    end
  end
end
