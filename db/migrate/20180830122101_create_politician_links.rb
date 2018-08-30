class CreatePoliticianLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :politician_links do |t|
      t.references :politician, foreign_key: true
      t.references :political_party, foreign_key: true

      t.timestamps
    end
  end
end
