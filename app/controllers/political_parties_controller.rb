class PoliticalPartiesController < ApplicationController
  before_action :find_political_party, only: [:edit, :update, :show, :destroy]

  def index
    @political_parties = policy_scope(PoliticalParty)
  end

  def new
    @political_party = PoliticalParty.new
    @politician = Politician.find(params[:politician_id])
    @user = current_user
    authorize @political_party
  end

  def edit

  end

  def show
    @political_party = current_user.political_parties.first
     authorize @political_party
  end

  def create
    @political_party = PoliticalParty.new(political_party_params)
    @political_party.user = current_user
    authorize @political_party
    if @political_party.save
      redirect_to political_party(@political_party)
    else
      render :new
    end
  end

  def update
    if @political_party.update(political_party_params)
      redirect_to political_party(@political_party)
    else
      render :edit
    end
  end

  def destroy
    @political_party.destroy
    @political_party = policy_scope(PoliticalParty)
  end

  private

  def find_political_party
   @political_party = PoliticalParty.find(params[:id])
   authorize @political_party
  end

  def political_party_params
    params.require(:political_party).permit(:name)
  end
end
