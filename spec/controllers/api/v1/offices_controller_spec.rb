# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Api::V1::OfficesController do
  describe 'GET #index' do
    before(:each) do
      VCR.use_cassette('offices index') do
        get :index, params: { use_route: '/api/v1/clinicians/:clinician_id/services/:service_id/offices',
                              clinician_id: 2, service_id: 6 }
      end
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
    it 'JSON body data object contains expected attributes' do
      json_body = JSON.parse(response.body)
      expect(json_body['data'].sample.keys).to match_array(%w[attributes id links type])
      expect(json_body['data'].size).to eq(3)
    end
  end
end