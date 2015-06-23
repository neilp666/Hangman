class GamesController < ApplicationController
  def new
    session[:current_game] = Game.new
    redirect_to game_path
  end

  def show
  end

  def update
  end

  def destroy
  end
end
