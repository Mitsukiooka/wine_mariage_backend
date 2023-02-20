module Api
  # Profile CRUD
  class ProfilesController < Api::BaseController
    before_action :set_profile, only: [:show, :update]

    def create
      profile = Profile.create!(profile_params)

      render json: { profile: profile.id }, status: :created
    end

    def show
      render json: @profile, serializer: ProfileSerializer, status: :ok
    end

    def update
      @profile.update!(profile_params)
      render json: @profile, serializer: ProfileSerializer, status: :ok
    end

    private

    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.permit([:name, :favorite_kind, :total_number])
    end
  end
end
