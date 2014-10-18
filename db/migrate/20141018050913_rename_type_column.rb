class RenameTypeColumn < ActiveRecord::Migration
  def change
    rename_column :chain_of_stores, :type, :category
  end
end
