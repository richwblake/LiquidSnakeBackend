class PlayersController < ApplicationController
    def index
        players = Player.all
        render json: { players: players }
    end

    def create
       player = Player.create(player_params)

       render json: player.valid? ? { player: player } : { message: "Please enter only 3 letters, and a numeric score!" }
    end

    private

    def player_params
        params.require(:player).permit(:name, :score)
    end
end