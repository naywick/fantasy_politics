class PoliticiansController < ApplicationController
  def index
    @politicians = Politician.all
    @politicians_scores = @politicians.each { |politician| politician.politicians_scores }
  end
end
