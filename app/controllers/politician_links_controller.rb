class PoliticianLinksController < ApplicationController
  def new
    @politician_link = PoliticianLink.new
    @politicians = Politician.all
    @political_party = PoliticalParty.find(params[:political_party_id])
    authorize @politician_link
  end

  def create
    @political_party = PoliticalParty.find(params[:political_party_id])
    @politician_link = PoliticianLink.new(politician_link_params)
    authorize @politician_link
    if @politician_link.save
      redirect_to new_political_party_politician_link_path(@political_party)
    else
      render :new
    end
  end

  private

  def politician_link_params
    params.require(:politician_link).permit(:politician_id, :political_party_id)
  end
end
