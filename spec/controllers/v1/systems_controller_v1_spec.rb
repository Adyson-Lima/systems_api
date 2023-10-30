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

  describe 'GET /api/v1/systems/id' do
    it 'Consegue listar um system especifico e retornar status 200?' do
      get :show, params: {id: @system.id}
      expect(response.body).to include_json(id: @system.id)
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/systems' do
    it 'Consegue criar um system e retornar status 201?' do
      post :create, params: {system: {name: "debian", manufacturer: "community"}, format: :json}

      expect(response.body).to include_json(name: "debian")
      expect(response).to have_http_status(201)
    end
  end

  describe 'PATCH /api/v1/systems/id' do
    it 'Consegue atualizar um system e retornar status 200?' do
      system = System.last
      patch :update, params: {system: {name: "ubuntu", manufacturer: "canonical"},id: system.id}

      expect(response.body).to include_json(name: "ubuntu")
      expect(response).to have_http_status(200)
    end
  end

end
