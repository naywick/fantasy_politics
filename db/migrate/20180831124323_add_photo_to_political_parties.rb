class AddPhotoToPoliticalParties < ActiveRecord::Migration[5.2]
  def change
    add_column :political_parties, :photo, :string
  end
end
