class AddColumnToPolitician < ActiveRecord::Migration[5.2]
  def change
    add_column :politicians, :rank, :string
  end
end
