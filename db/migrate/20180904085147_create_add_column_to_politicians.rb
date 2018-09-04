class CreateAddColumnToPoliticians < ActiveRecord::Migration[5.2]
  def change
    create_table :add_column_to_politicians do |t|
      t.string :rank

      t.timestamps
    end
  end
end
