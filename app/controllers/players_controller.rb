class PlayersController < ApplicationController
    def index
        players = Player.all
        render json: { players: players }
    end
end