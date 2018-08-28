class PoliticalParty < ApplicationRecord
  belongs_to :user

  include AlgoliaSearch

  algoliasearch do
    attribute :name
  end
end
