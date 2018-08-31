class AddPhotoToPoliticians < ActiveRecord::Migration[5.2]
  def change
    add_column :politicians, :photo, :string
  end
end
