class PoliticalParty < ApplicationRecord
  belongs_to :user

  include AlgoliaSearch

  algoliasearch do

  end
end
