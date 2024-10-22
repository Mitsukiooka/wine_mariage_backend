class WinesController < ApplicationController
  before_action :set_wine, only: [:show, :edit, :update, :destroy]

  def index
    @wines = Wine.all
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.create!(wine_params)
    redirect_to wines_path
  end

  def show
  end

  def edit
  end

  def update
    @wine.update!(wine_params)
    redirect_to wines_path
  end

  def destroy
    @wine.delete!
  end

  private

  def set_wine
    @wine = Wine.find(params[:id])
  end

  def wine_params
    params.require(:wine).permit([:name, :kind, :country, :maker, :color, :body, :aroma, :score])
  end
end
