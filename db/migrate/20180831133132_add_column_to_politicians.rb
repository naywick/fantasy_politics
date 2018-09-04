class AddColumnToPoliticians < ActiveRecord::Migration[5.2]
  def change
    add_column :politicians, :about, :text
    add_column :politicians, :rank, :string
  end
end
