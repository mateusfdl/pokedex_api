# frozen_string_literal: true

require 'rails_helper'
require 'pokemon_helper'

RSpec.describe Pokemon::PokemonAbilities do
  include PokemonHelper

  describe 'abilities' do
    it 'return pokemon abilities' do
      pokemon = double('pokemon', body: pokemon_serialized_abilities)
      allow_any_instance_of(Pokemon::API).to receive(:search_by_name).and_return(pokemon)

      expect(described_class.abilities('foo')).to eq(pokemon_abilities[:abilities])
    end
  end
end
