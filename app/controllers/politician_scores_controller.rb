class PoliticianScoresController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index
  def index
    skip_authorization
  end

  def show
    @politician = Politician.find(params[:politician_id])
    @politician_scores = @politician.politician_scores
    authorize @politician_scores
  end



end
