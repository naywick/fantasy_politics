class CreateLeagueConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :league_connections do |t|
      t.references :league, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
