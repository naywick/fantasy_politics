class PoliticianScoresController < ApplicationController

  def index
    @politician_scores =  policy_scope(PoliticianScore).order(created_at: :desc)
    @scores = []
    @politicians = Politician.all
  end

end



























  # skip_after_action :verify_policy_scoped, only: :index

    # skip_authorization
    # @politician = Politician.find(params[:politician_id])
    # @politician_score = @politician.politician_scores
    #  authorize @politician_scores
    # @politicians.each do |politician|
    #   @scores << {name: politician.name, score: PoliticianScore.new(mentions, politician).score }
    # end
  # def show
  #   @politician = Politician.find(params[:politician_id])
  #   @politician_scores = @politician.politician_scores
  #   authorize @politician_scores
  # end



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
