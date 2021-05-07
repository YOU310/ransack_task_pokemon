class PokemonsController < ApplicationController
  PER_PAGE = 20
  
  def index
    @pokemons = Pokemon.page(params[:page]).per(PER_PAGE)
  end
end
