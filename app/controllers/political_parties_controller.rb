class PoliticalPartiesController < ApplicationController
  def index
    @political_parties = current_user.political_parties
  end

  def new
    @political_party = PoliticalParty.new
  end

  def show
    @political_party = current_user.political_parties.first
  end

  def create
    @political_party = PoliticalParty.new(political_party_params)
    @political_party.user = current_user
    authorize = @political_party
    if @political_party.save
      redirect_to political_party(@political_party)
    else
      render :new
    end
  end

  def update
    @political_party = PoliticalParty.find(params[:id])
    if @political_party.update(political_party_params)
      redirect_to political_party(@political_party)
    else
      render :edit
    end
  end

  def destroy
    @political_party.destroy
  end

  private

  def political_party_params
    params.require(:political_party).permit(:name)
  end
end
