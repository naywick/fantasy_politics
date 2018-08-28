class RemoveColumnFromPoliticians < ActiveRecord::Migration[5.2]
  def change
   remove_column :politicians, :name
  end
end
