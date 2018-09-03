class PoliticiansController < ApplicationController
  def index
    @politicians = Politician.all
    @politician_scores = @politicians.each { |politician| politician.politician_scores }
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
