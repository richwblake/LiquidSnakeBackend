class PlayersController < ApplicationController
    def index
        players = Player.all
        render json: { players: players }
    end

    def create
       binding.pry
    end

    private

    def player_params
        params.require(:player).permit(:name, :score)
    end
end