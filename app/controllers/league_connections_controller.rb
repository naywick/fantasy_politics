class LeagueConnectionsController < ApplicationController

  def create
    @league = League.find(params[:league_id].to_i)
    authorize @league
    if @league.users.length < 8
      @league_connection = LeagueConnection.new(league_id: @league.id, political_party_id: PoliticalParty.find(params[:political_party].to_i).id)
      if @league_connection.save
        UserLeagueConnection.create(league: @league, user: current_user)
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


  # def new
  #   @league_connection = LeagueConnection.new
  #   @political_party = PoliticalParty.find(params[:political_party].to_i)
  #   @league = League.find(params[:league_id].to_i)
  #   # authorize @league
  #   authorize @league_connection
  # end

  # def index
  #   @league_connections = policy_scope(LeagueConnection)
  # end
