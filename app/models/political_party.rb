class PoliticalParty < ApplicationRecord
  belongs_to :user
  has_many :league_connections
  has_many :leagues, through: :league_connections

  has_many :politician_links
  has_many :politicians, through: :politician_links

  accepts_nested_attributes_for :politician_links

  include AlgoliaSearch

  algoliasearch do

  end
end
