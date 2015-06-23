class GamesController < ApplicationController
  def new
    session[:current_game] = Game.new
    redirect_to game_path
  end

  def show
  end

  def update
    current_game.select: params[:letter]
    update_current_game
  rescue Game::GameOverError
    flash[:alert] = 'This game is Finished....'
  ensure
    redirect_to game_path
  end

  def destroy
    set_current_game nil
    redirect_to root_path
  end
end
