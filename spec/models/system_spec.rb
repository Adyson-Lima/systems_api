require 'rails_helper'

RSpec.describe System, type: :model do

  before {@system = System.new}

  describe 'Teste de preenchimento dos campos do model System' do

    it 'name consegue ser preenchido?' do
      @system.name = "debian"
      expect(@system.name).to eq("debian")
    end

    it 'manufacturer consegue ser preenchido?' do
      @system.manufacturer = "community"
      expect(@system.manufacturer).to eq("community")
    end

  end

  describe 'Teste de validação do model System' do

    it 'System valido com campos obrigatorios preenchidos?' do
      @system.name = "ubuntu"
      @system.manufacturer = "canonical"

      expect(@system).to be_valid
    end

    it 'System invalido com campos obrigatorios não preenchidos?' do
      system = System.new

      expect(system).to be_valid
    end

  end

end
