class CreateUserLeagueConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :user_league_connections do |t|
      t.references :user, foreign_key: true
      t.references :league, foreign_key: true
    end
  end
end
