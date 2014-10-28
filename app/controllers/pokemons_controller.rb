class PokemonsController < ApplicationController
  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update_attributes(trainer_id: current_trainer.id)
    redirect_to root_path
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :level, :trainer_id)
  end
    
end
