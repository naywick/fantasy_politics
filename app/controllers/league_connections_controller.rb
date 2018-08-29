class LeagueConnectionsController < ApplicationController
  def create
    league = League.find(params[:id])
    if @league.users.length < 8
      league_connection = LeagueConnection.new
      league_connection.user = current_user
      league_connection.league = league
      league_connection.save
      redirect_to league_path(league)
    end
  end
end
