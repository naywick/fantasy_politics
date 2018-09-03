class PoliticianScoresController < ApplicationController
  # skip_after_action :verify_policy_scoped, only: :index
  def index
    # skip_authorization
    @politician_scores =  policy_scope(PoliticianScore).order(created_at: :desc)
    # @politician = Politician.find(params[:politician_id])
    # @politician_score = @politician.politician_scores
    #  authorize @politician_scores
  end

  def show
    @politician = Politician.find(params[:politician_id])
    @politician_scores = @politician.politician_scores
    authorize @politician_scores
  end



end



# class PoliticiansScoresController < ApplicationController

#   def index
#      @politician_scores = policy_scope(PoliticianScore).order(created_at: :desc)
#   end

#   def show
#     @politician = Politician.find(params[:politician_id])
#     @politician_scores = @politician.politician_scores
#     authorize @politician_scores

#   end



# end
