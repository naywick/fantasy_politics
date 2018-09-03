class LeagueConnectionsController < ApplicationController
  def new
    @league_connection = LeagueConnection.new
    @political_parties = PoliticalParty.all
    @league = League.find(params[:league_id])
    authorize @league
  end

  def create
    @league = League.find(params[:id])
    if @league.users.length < 8
      @league_connection = LeagueConnection.new(league_connection_params)
      if @league_connection.save
        redirect_to new_league_league_connection_path(@league)
      else
        render :new
      end
    end
  end

  private

  def league_connection_params
    params.require(:league_connection).permit(:league_id, :political_party_id)
  end
end
