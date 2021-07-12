module Pokemon
  
  class PokemonAbilities
    ENDPOINT = PokemonService.instance

    def self.abilities(pokemon_name)
      PokemonDeserializer.new(
        ENDPOINT.search_by_name(pokemon_name)
      ).deserialize_abilities
    end
  end
end
