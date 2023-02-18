# Wine CRUD
class WinesController < BaseController
  before_action :set_wine, only: [:show, :update, :destroy]

  def index
    wines = Wine.all
    render json: wines, each_serializer: WineSerializer, status: :ok
  end

  def create
    wine = Wine.create!(wine_params)

    render json: { wine_id: wine.id }, status: :created
  end

  def show
    render json: @wine, serializer: WineSerializer, status: :ok, adapter: :json
  end

  def update
    @wine.update!(wine_params)
    render json: { wine_id: @wine.id }, status: :ok
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
