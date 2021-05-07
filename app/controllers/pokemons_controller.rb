class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.limit(20)
  end
end
