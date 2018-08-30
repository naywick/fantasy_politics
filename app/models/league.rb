class League < ApplicationRecord
  belongs_to :user

  has_many :league_connections
  has_many :political_parties, through: :league_connections

  has_many :user_league_connections
  has_many :users, through: :user_league_connections

  def creator
    return self.user
  end

  include AlgoliaSearch

  algoliasearch do

  end
end
