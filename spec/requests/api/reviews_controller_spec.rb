require 'rails_helper'

describe Api::ReviewsController, type: :request do
  let(:wine) do
    create(:wine)
  end

  let(:profile) do
    create(:profile)
  end

  let(:review) do
    create(:review)
  end

  let(:params) do
    {
      wine_id: wine.id,
      profile_id: profile.id,
      content: '100点！'
    }
  end

  describe 'POST /api/reviews' do
    subject(:request) { post url, params: }

    let(:url) { '/api/reviews' }

    it 'creates review' do
      request
      expect(response.status).to eq 201
    end
  end

  describe 'PATCH /api/reviews' do
    subject(:request) { patch url, params: }

    let(:url) { "/api/reviews/#{review.id}" }

    it 'updates profile' do
      review
      request
      expect(response.status).to eq 200
      expect(JSON.parse(response.body)['review_id']).to match(review.id)
    end
  end
end
