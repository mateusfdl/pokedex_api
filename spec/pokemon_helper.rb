# frozen_string_literal: true

module PokemonHelper
  def pokemon_serialized_abilities
    pokemon_abilities.to_json
  end

  def pokemon_abilities
    {
      abilities: [
        {
          name: 'Limber'
        }
      ]
    }
  end
end
