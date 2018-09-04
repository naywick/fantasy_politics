class NewsItem < ApplicationRecord

  include AlgoliaSearch

  algoliasearch do
  end

end
