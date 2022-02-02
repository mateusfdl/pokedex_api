# frozen_string_literal: true

require 'spec_helper'
require 'pokemon_helper'

RSpec.describe Pokemon::PokemonDeserializer do
  include PokemonHelper

  context 'deserialize abilities' do
    it 'returns deserialized pokemon abilities' do
      pokemon = double('pokemon', body: pokemon_serialized_abilities)

      pokemon_deserializer = Pokemon::PokemonDeserializer.new(pokemon)

      expect(pokemon_deserializer.deserialize_abilities).to eq(pokemon_abilities[:abilities])
    end
  end
end
