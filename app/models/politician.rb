class Politician < ApplicationRecord
  has_one :politicians_score

  include AlgoliaSearch

  algoliasearch do

  end
end
