class LeaguesController < ApplicationController
  def index
    @leagues = League.all
  end

  def create
    league = League.new(league_params)
    league.user = current_user
    if league.save
      league_connection = LeagueConnection.new
      league_connection.user = current_user
      league_connection.league = league
      league_connection.save
      redirect_to league_path(league)
    end
  end

  def show
    @league = League.find(params[:id])
  end

  def update
    @league = League.find(params[:id])
    if @league.update(league_params)
      redirect_to league(@league)
    else
      render :edit
  end

  def destroy
    @league = League.find(params[:id])
    @league.destroy
  end

  private

  def league_params
    params.require(:league).permit(:name)
  end
end
