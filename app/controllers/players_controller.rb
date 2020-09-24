class PlayersController < ApplicationController
    def index
        players = Player.all.limit(10)

        render json: { players: players }
    end

    def create
       player = Player.create(player_params)

       render json: player.valid? ? { player: player } : { message: "Please enter only 3 letters!" }
    end

    private

    def player_params
        params.require(:player).permit(:name, :score)
    end
end