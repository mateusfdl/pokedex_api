# frozen_string_literal: true

module Pokemon
  class PokemonDeserializer
    attr_accessor :pokemon

    def initialize(pokemon)
      @pokemon = pokemon
    end

    def deserialize_abilities
      JSON.parse(pokemon.body)['abilities']
    end
  end
end
