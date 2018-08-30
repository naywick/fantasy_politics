class LeagueConnection < ApplicationRecord
  belongs_to :league
  belongs_to :political_party
end
