class AddAboutColumnToPolitician < ActiveRecord::Migration[5.2]
  def change
    add_column :politicians, :about, :string
  end
end
