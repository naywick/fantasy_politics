class Politician < ApplicationRecord
  has_one :politicians_score
  has_many :political_links
  has_many :political_parties, through: :political_links
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :party, presence:true, inclusion: { in: ["Conservative", "Labour", "Green", "DUP", "UKIP", "SNP", "Liberal Democrats"] }

  include AlgoliaSearch

  algoliasearch do

  end
end
