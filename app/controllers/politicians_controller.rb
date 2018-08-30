class PoliticiansController < ApplicationController
  def index
    @politicians = Politician.all
    @politicians_scores = @politicians.each { |politician| politician.politicians_scores }
  end

  def show
   @politician = Politician.find(param[:id])
    authorize @politician
  end

  end
end
