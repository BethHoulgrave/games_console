class MovesController < ApplicationController
  # GET /moves
  # GET /moves.json
  def index
    @moves = Move.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @moves }
    end
  end

  # GET /moves/1
  # GET /moves/1.json
  def show
    @move = Move.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @move }
    end
  end


  # ASSIGNING X AND O TO PLAYERS
  def new
    @game = Game.find(params[:game_id])
    if current_user.id == @game.player_1
      player_symbol = 'X'
    else
      player_symbol = 'O'
    end
    
  # ADDING THE MOVE AND IT'S VARIABLES TO THE DATABASE 
  @game.moves.create(cell: params[:square_id], user_id: current_user.id, symbol: player_symbol)
  # REDIRECTS TO THE SHOW PAGE
  redirect_to game_path(@game)
end

  # GET /moves/1/edit
  def edit
    @move = Move.find(params[:id])
  end

  def create
  end

  # PUT /moves/1
  # PUT /moves/1.json
  def update
    @move = Move.find(params[:id])

    respond_to do |format|
      if @move.update_attributes(params[:move])
        format.html { redirect_to @move, notice: 'Move was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @move.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moves/1
  # DELETE /moves/1.json
  def destroy
    @move = Move.find(params[:id])
    @move.destroy

    respond_to do |format|
      format.html { redirect_to moves_url }
      format.json { head :no_content }
    end
  end
end
