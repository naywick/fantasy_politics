class Politician < ApplicationRecord
  include AlgoliaSearch

  algoliasearch do
    attribute :first_name, :last_name, :party
  end

end
