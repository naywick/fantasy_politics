class PoliticiansController < ApplicationController
  def index
    @politicians = Politician.all
    @politicians_scores = @politicians.each { |politician| politician.politicians_scores }
  end

  def show
   @politician = Politician.find(params[:id])
    authorize @politician
  end

end
