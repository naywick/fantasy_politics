class LeaguesController < ApplicationController
  before_action :find_league, only: [:edit, :update, :show, :destroy]

  def index
    @leagues = policy_scope(League).order(created_at: :desc)
  end

  def new
    @league = League.new
    authorize @league
  end

  # def edit
  #   @politician = Politician.find(params[:politician_id])
  # end


  def create
    @league = League.new(league_params)
    @league.user = current_user
    authorize @league
    if @league.save
      @league_connection = LeagueConnection.new
      @league_connection.league = @league
      # league_connection.user = current_user
      @league_connection.save
      # LeagueMailer.creation_confirmation(@league).deliver_now
      redirect_to league_path(@league)
    else
     render :new
    end
  end

  def show
  end

  # def update
  #   if @league.update(league_params)
  #     redirect_to league(@league)
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @league.destroy
  #   @league = policy_scope(League)
  # end

private

  def find_league
   @league = League.find(params[:id])
   authorize @league
  end

  def league_params
    params.require(:league).permit(:name)
  end
end
