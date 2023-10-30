require 'rails_helper'

RSpec.describe System, type: :model do

  before {@system = System.new}

  describe 'Teste de preenchimento dos campos do model System' do

    it 'name consegue ser preenchido?' do
      @system.name = ""
      expect(@system.name).to eq("debian")
    end

  end

end
