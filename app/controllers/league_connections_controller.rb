class LeagueConnectionsController < ApplicationController
  def index
    @league_connections = policy_scope(LeagueConnection)
  end

  def new
    @league_connection = LeagueConnection.new
    @political_party = PoliticalParty.find(params[:political_party_id])
    @league = League.find(params[:league_id])
    # authorize @league
    authorize @league_connection
  end

  def create
    @league = League.find(params[:league_id])
    authorize @league
    if @league.users.length < 8
      @league_connection = LeagueConnection.new(league_connection_params)
      if @league_connection.save
        redirect_to leagues_path
      else
        render :new
      end
    end
  end

  private

  def league_connection_params
    params.permit(:league_id, :political_party_id)
  end
end
