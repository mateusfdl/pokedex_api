# frozen_string_literal: true

class PokemonController < ApplicationController
  def show_abilities
    
    @pokemon_abilities = Pokemon::PokemonAbilities.abilities pokemon_name_params

    render json: abilities.sort
  end

  private

  def pokemon_name_params
    params.require(:pokemon_name)
  end

  def abilities
    @pokemon_abilities.map do |ability|
      ability['ability']['name']
    end
  end
end
