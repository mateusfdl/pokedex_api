# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Pokemon::API do
  describe 'base uri' do
    it 'return pokeapi uri' do
      api = Pokemon::API.new

      expect(api.base_uri).to eq('https://pokeapi.co/api/v2')
    end
  end
end
