class PoliticiansScoresController < ApplicationController

  def index
  end

  def show
    @politician = Politician.find(params[:politician_id])
    @politicians_scores = @politician.politicians_scores
    authorize @politicians_scores

  end



end
