class PoliticiansController < ApplicationController
  def index
    @politicians = Politician.all
    @politicians_scores = @politicians.each { |politician| politician.politicians_scores }
  end

  def show
   @politician = Politician.find(params[:id])
    authorize @politician
  end

  private
  def politician_params
    params.require(:politician).permit(:first_name, :last_name, :party, :photo)
  end
end
