class PoliticiansController < ApplicationController
  def index
    @politicians = Politician.all
  end
end
