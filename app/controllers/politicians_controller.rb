class PoliticiansController < ApplicationController
  def index
    @politicians = Politician.all
    @politician_scores = @politicians.each { |politician| politician.politician_scores }
  end

  def show
   @politician = Politician.find(param[:id])
    authorize @politician
  end

  end
end
