class League < ApplicationRecord
  belongs_to :user
  has_many :league_connections
  has_many :users, through: :league_connections

  def creator
    return self.user
  end
end
