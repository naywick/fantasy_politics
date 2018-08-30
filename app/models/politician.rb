class Politician < ApplicationRecord
  has_one :politicians_score
  has_many :political_links
  has_many :political_parties, through: :political_links

  include AlgoliaSearch

  algoliasearch do

  end
end
