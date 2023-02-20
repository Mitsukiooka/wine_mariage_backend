require 'rails_helper'

describe Api::WinesController, type: :request do
  let(:wine) do
    create(:wine)
  end

  let(:params) do
    {
      name: 'Bread and Butter',
      kind: '赤 カベルネ・ソーヴィニヨン',
      country: 'アメリカ カルフォルニア',
      maker: 'aaa',
      color: '明るめの赤',
      body: '軽め',
      aroma: 'ベリー',
      score: 8
    }
  end

  describe 'GET /api/wines' do
    subject(:request) { get url }

    let(:url) { '/api/wines' }

    it 'returns wines' do
      wine
      request
      expect(response.status).to eq 200
      expect(JSON.parse(response.body)[0]["name"]).to match(wine.name)
    end
  end

  describe 'POST /api/wines' do
    subject(:request) { post url, params: }

    let(:url) { '/api/wines' }

    it 'creates wine' do
      request
      expect(response.status).to eq 201
    end
  end

  describe 'PATCH /api/wines' do
    subject(:request) { patch url, params: }

    let(:url) { "/api/wines/#{wine.id}" }

    it 'updates wine' do
      wine
      request
      expect(response.status).to eq 200
      expect(JSON.parse(response.body)["kind"]).to match(params[:kind])
    end
  end
end
