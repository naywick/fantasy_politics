class PoliticianLink < ApplicationRecord
  belongs_to :politician
  belongs_to :political_party
end
