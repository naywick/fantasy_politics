class AddFirtsNameToPoliticians < ActiveRecord::Migration[5.2]
  def change
    add_column :politicians, :first_name, :string
    add_column :politicians, :last_name, :string
  end
end
