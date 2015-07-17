class GamesController < ApplicationController
# GET /games
  def index
    # all the games
    @games = Game.all
    render json: @games
  end

  # GET /games/:id
  def show
    # find one Game by id
    @game = Game.find(params[:id])
    render json: @game
  end

  # POST /games
  def create
    @game = Game.new(game_params)
    if @game.save
      render json: @game, status: :created
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH /games/:id
  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      head :no_content
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/:id
  def delete
    @game = Game.find(params[:id])
    @game.delete

    head :no_content
  end

  def count
    count = Game.count
    render json: {count: count}
  end

  private
   def game_params
    params.require(:game)
      .permit(:title, :image, :desc, :mode, :genre, :download)
  end
end
