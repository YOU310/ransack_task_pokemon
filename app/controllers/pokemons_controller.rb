class PokemonsController < ApplicationController
  PER_PAGE = 20
  
  def index
    @q = Pokemon.ransack(params[:q])
    @pokemons = @q.result.page(params[:page]).per(PER_PAGE)
  end
end
