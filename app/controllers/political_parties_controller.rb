class PoliticalPartiesController < ApplicationController
  before_action :find_political_party, only: :show

  def index
    @political_parties = policy_scope(PoliticalParty)
  end

  def new
    @political_party = PoliticalParty.new
    @user = current_user
    authorize @political_party
  end

  def show
    @political_party = PoliticalParty.find(params[:id])
     authorize @political_party
  end

  def create
    @political_party = PoliticalParty.new(political_party_params)
    @political_party.user = current_user
    authorize @political_party
    if @political_party.save
      redirect_to new_political_party_politician_link_path(@political_party)
    else
      render :new
    end
  end

  private

  def find_political_party
   @political_party = PoliticalParty.find(params[:id])
   authorize @political_party
  end

  def political_party_params
    params.require(:political_party).permit(:name, :photo)
  end
end
