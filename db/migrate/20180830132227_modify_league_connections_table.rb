class ModifyLeagueConnectionsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :league_connections, :user_id
    add_reference :league_connections, :political_party, foreign_key: true
  end
end
