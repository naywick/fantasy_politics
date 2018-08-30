class Politician < ApplicationRecord
  has_one :politicians_score
  has_many :politician_links
  has_many :political_parties, through: :politician_links

  include AlgoliaSearch

  algoliasearch do

  end
end
