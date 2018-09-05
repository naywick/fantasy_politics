class PoliticianLinksController < ApplicationController
  def new
    @politician_link = PoliticianLink.new
    if params[:query].blank?
      @politicians = Politician.all
    else
      @politicians = Politician.search_politicians(params[:query])
    end
    @political_party = PoliticalParty.find(params[:political_party_id])
    @num_of_politicians = @political_party.politicians.count
    authorize @politician_link
  end

  def create
    @political_party = PoliticalParty.find(params[:political_party_id])
    @politician_link = PoliticianLink.new(politician_link_params)
    authorize @politician_link
    @num_of_politicians = @political_party.politicians.count
    if @politician_link.save
      redirect_to new_political_party_politician_link_path(@political_party)
      # respond_to do |format|
      #   format.html
      #   format.js
      # end
    else
      render :new
    end
  end

  def destroy
    @political_party = PoliticalParty.find(params[:political_party_id])
    @politician_link = PoliticianLink.find(params[:id])
    authorize @politician_link
    @politician_link.destroy
    redirect_to new_political_party_politician_link_path(@political_party)
  end

  private

  def politician_link_params
    params.require(:politician_link).permit(:politician_id, :political_party_id)
  end
end
