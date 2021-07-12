module Pokemon
  
  class PokemonService < API
    include Singleton

    def self.new
      super
    end
  end
end
