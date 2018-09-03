class PoliticalParty < ApplicationRecord
  belongs_to :user
  has_many :league_connections
  has_many :leagues, through: :league_connections

  has_many :political_links
  has_many :politicians, through: :political_links
  validates :name, presence: true, uniqueness: true

  has_many :politician_links
  accepts_nested_attributes_for :politician_links
  
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
end
