class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home, raise: false

  def home
  end

  def search_results
    @results = Algolia.multiple_queries([
      { index_name: 'User', query: params[:query] },
      { index_name: 'Politician', query: params[:query] },
      { index_name: 'PoliticalParty', query: params[:query] },
      { index_name: 'League', query: params[:query] }
    ])["results"]
  end
end
