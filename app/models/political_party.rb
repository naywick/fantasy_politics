class PoliticalParty < ApplicationRecord
  belongs_to :user
  has_many :league_connections
  has_many :leagues, through: :league_connections

  has_many :politician_links
  has_many :politicians, through: :politician_links

  include AlgoliaSearch

  algoliasearch do

  end
  # if no photo uploded will display from stock photos
  def cl_photo
      if photo?
        photo
      else
        'https://pbs.twimg.com/profile_images/854676302317703169/RQw2coJC_400x400.jpg'
    end
  end

  def score
    sum = 0
    politicians.each do |p|
      sum += p.score
    end
    return sum
  end
end
