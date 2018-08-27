class CreatePoliticianScores < ActiveRecord::Migration[5.2]
  def change
    create_table :politician_scores do |t|
      t.references :politician, foreign_key: true
      t.integer :mentions

      t.timestamps
    end
  end
end
