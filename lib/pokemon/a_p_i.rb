# frozen_string_literal: true

module Pokemon
  class API
    include HTTParty

    def initialize
      self.class.base_uri base_uri
    end

    def search_by_name(pokemon_name)
      self.class.get("/pokemon/#{pokemon_name}")
    end
    alias get_pokemon search_by_name

    def base_uri
      'https://pokeapi.co/api/v2'
    end
  end
end
