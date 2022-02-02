# frozen_string_literal: true

module Pokemon
  class PokemonDeserializer
    attr_accessor :pokemon

    def initialize(pokemon)
      @pokemon = pokemon
    end

    def deserialize_abilities
      JSON.parse(pokemon.body, symbolize_names: true)[:abilities]
    end
  end
end
