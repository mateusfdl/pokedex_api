# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Pokemon', type: :request do
  context '#show_abilities' do
    before do
      allow(Pokemon::PokemonAbilities).to receive(:abilities).and_return(abilities)
      get show_abilities_path('foo')
    end

    let(:abilities) do
      [
        {
          ability: {
            name: 'b'
          }
        },
        {
          ability: {
            name: 'a'
          }
        }
      ]
    end

    it 'returns sorted abilities' do
      expect(JSON.parse(response.body)).to eq(%w[a b])
    end
  end
end
