class PoliticalParty < ApplicationRecord
  belongs_to :user
  has_many :league_connections
  has_many :leagues, through: :league_connections

  has_many :political_links
  has_many :politicians, through: :political_links
  validates :name, presence: true, uniqueness: true

  include AlgoliaSearch

  algoliasearch do

  end
end
