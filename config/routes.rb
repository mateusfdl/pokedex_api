# frozen_string_literal: true

Rails.application.routes.draw do
  get '/pokemon/:pokemon_name',
      to: 'pokemon#show_abilities',
      as: :show_abilities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
