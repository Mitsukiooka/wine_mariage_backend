require 'rails_helper'

describe Api::ProfilesController, type: :request do
  let(:profile) do
    create(:profile)
  end

  let(:params) do
    {
      name: 'Masumi',
      favorite_kind: 'イタリアワイン',
      total_number: 10
    }
  end

  describe 'GET /api/profiles' do
    subject(:request) { get url }

    let(:url) { "/api/profiles?id=#{profile.id}" }

    it 'returns profile' do
      profile
      request
      expect(response.status).to eq 200
      expect(JSON.parse(response.body)["name"]).to match(profile.name)
    end
  end

  describe 'POST /api/profiles' do
    subject(:request) { post url, params: }

    let(:url) { '/api/profiles' }

    it 'creates profile' do
      request
      expect(response.status).to eq 201
    end
  end

  describe 'PATCH /api/profiles' do
    subject(:request) { patch url, params: }

    let(:url) { "/api/profiles?id=#{profile.id}" }

    it 'updates profile' do
      profile
      request
      expect(response.status).to eq 200
      expect(JSON.parse(response.body)["name"]).to match(params[:name])
    end
  end
end
