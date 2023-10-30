require 'rails_helper'

RSpec.describe Api::V1::SystemsController, type: :controller do

  before { @system = System.create(name: "opensuse", manufacturer: "suse") }

  describe 'GET /api/v1/systems' do
    it 'Consegue listar todos os systems e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

end
