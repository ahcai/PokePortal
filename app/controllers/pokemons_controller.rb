class PokemonsController < ApplicationController
  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update_attributes(trainer_id: current_trainer.id)
    redirect_to root_path
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update_attributes(health: @pokemon.health - 10)
    if @pokemon.health <= 0
      @pokemon.destroy
    end 
    redirect_to trainer_path(@pokemon.trainer_id), :action => "get"
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:id)
  end
    
end
