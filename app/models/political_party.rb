class PoliticalParty < ApplicationRecord
  belongs_to :user
  has_many :league_connections
  has_many :leagues, through: :league_connections

  include AlgoliaSearch

  algoliasearch do

  end
end
