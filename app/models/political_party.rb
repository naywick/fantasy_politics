class PoliticalParty < ApplicationRecord
  belongs_to :user
  has_many :league_connections
  has_many :leagues, through: :league_connections
  accepts_nested_attributes_for :political_links

  has_many :political_links
  has_many :politicians, through: :political_links

  include AlgoliaSearch

  algoliasearch do

  end
end
